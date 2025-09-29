#!/usr/bin/env python3
"""
Create Microsoft 365 Service Principals using Microsoft Graph Beta SDK
"""

import json
import logging
import sys
from typing import Dict, List, Optional

import os
import yaml
from azure.identity import ClientSecretCredential
from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application
from msgraph.generated.models.password_credential import PasswordCredential
from msgraph.generated.models.required_resource_access import RequiredResourceAccess
from msgraph.generated.models.resource_access import ResourceAccess
from msgraph.generated.models.service_principal import ServicePrincipal

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)


class ServicePrincipalManager:
    """Manages creation of service principals using Microsoft Graph Beta SDK"""

    def __init__(self, config_path: str = "config.yaml"):
        self.config = self._load_config(config_path)
        self.client = self._create_graph_client()
        self.results = {}

    def _load_config(self, config_path: str) -> dict:
        """Load configuration from YAML file"""
        try:
            with open(config_path, 'r', encoding='utf-8') as file:
                config = yaml.safe_load(file)
                logger.info("Loaded configuration from %s", config_path)
                return config
        except FileNotFoundError:
            logger.error("Configuration file %s not found", config_path)
            sys.exit(1)
        except yaml.YAMLError as e:
            logger.error("Error parsing YAML configuration: %s", e)
            sys.exit(1)

    def _create_graph_client(self) -> GraphServiceClient:
        """Create Microsoft Graph client with credentials"""
        # Get credentials from environment variables
        tenant_id = os.getenv('AZURE_TENANT_ID')
        client_id = os.getenv('AZURE_CLIENT_ID')
        client_secret = os.getenv('AZURE_CLIENT_SECRET')
        
        if not all([tenant_id, client_id, client_secret]):
            logger.error("Missing required environment variables: AZURE_TENANT_ID, AZURE_CLIENT_ID, AZURE_CLIENT_SECRET")
            sys.exit(1)
        
        try:
            credential = ClientSecretCredential(
                tenant_id=tenant_id,
                client_id=client_id,
                client_secret=client_secret
            )
            
            scopes = self.config.get('graph', {}).get('scope', ['https://graph.microsoft.com/.default'])
            client = GraphServiceClient(credentials=credential, scopes=scopes)
            logger.info("Successfully created Graph client with client secret authentication")
            return client
        except ValueError as e:
            logger.error("Authentication error: %s", e)
            sys.exit(1)
        except ImportError as e:
            logger.error("SDK import error: %s", e)
            sys.exit(1)
        except (ConnectionError, TimeoutError) as e:
            logger.error("Connection error: %s", e)
            sys.exit(1)

    def _create_resource_access(self, permissions: List[dict]) -> List[ResourceAccess]:
        """Create resource access objects from permission configuration"""
        resource_accesses = []
        for permission in permissions:
            resource_access = ResourceAccess()
            resource_access.id = permission['id']
            resource_access.type = permission['type']
            resource_accesses.append(resource_access)
        return resource_accesses

    def _create_application(self, sp_config: dict) -> Application:
        """Create application in Azure AD"""
        try:
            # Get environment for tagging only
            environment = os.getenv('ENVIRONMENT', 'dev')
            
            # Create required resource access for Microsoft Graph
            resource_access = self._create_resource_access(sp_config['permissions'])
            required_resource_access = RequiredResourceAccess()
            required_resource_access.resource_app_id = self.config['graph']['resource_app_id']
            required_resource_access.resource_access = resource_access

            # Create application object using exact display name from config
            display_name = sp_config['display_name']
            description = f"{sp_config['description']} ({environment} environment)"
            
            application = Application()
            application.display_name = display_name
            application.description = description
            application.tags = sp_config['tags'] + [environment]
            application.required_resource_access = [required_resource_access]

            # Create application via Graph API
            created_app = self.client.applications.post(application)
            logger.info("Created application: %s (ID: %s)", display_name, created_app.id)
            return created_app

        except (ValueError, KeyError) as e:
            logger.error("Invalid application configuration for %s: %s", sp_config['display_name'], e)
            raise
        except ConnectionError as e:
            logger.error("Connection error creating application %s: %s", sp_config['display_name'], e)
            raise

    def _create_service_principal(self, app_id: str, tags: List[str]) -> ServicePrincipal:
        """Create service principal from application"""
        try:
            service_principal = ServicePrincipal()
            service_principal.app_id = app_id
            service_principal.tags = tags
            service_principal.app_role_assignment_required = self.config['settings']['app_role_assignment_required']

            created_sp = self.client.service_principals.post(service_principal)
            logger.info("Created service principal: %s (Object ID: %s)", app_id, created_sp.id)
            return created_sp

        except ValueError as e:
            logger.error("Invalid service principal configuration for app %s: %s", app_id, e)
            raise
        except ConnectionError as e:
            logger.error("Connection error creating service principal for app %s: %s", app_id, e)
            raise

    def _create_application_password(self, app_object_id: str, display_name: str) -> Optional[PasswordCredential]:
        """Create application password/secret"""
        if not self.config['settings']['create_secrets']:
            return None

        try:
            password_credential = PasswordCredential()
            password_credential.display_name = f"{display_name}-secret"

            # Create password via Graph API
            created_password = self.client.applications.by_application_id(app_object_id).add_password.post(password_credential)
            logger.info("Created application password for %s", display_name)
            return created_password

        except ValueError as e:
            logger.warning("Invalid password configuration for %s: %s", display_name, e)
            return None
        except ConnectionError as e:
            logger.warning("Connection error creating password for %s: %s", display_name, e)
            return None

    def create_service_principals(self) -> Dict[str, dict]:
        """Create all service principals defined in configuration"""
        logger.info("Starting service principal creation process")

        for sp_config in self.config['service_principals']:
            try:
                logger.info("Processing service principal: %s", sp_config['display_name'])

                # Create application
                app = self._create_application(sp_config)

                # Create service principal
                service_principal = self._create_service_principal(app.app_id, sp_config['tags'])

                # Store results
                sp_info = {
                    'name': sp_config['name'],
                    'client_id': app.app_id,
                    'object_id': service_principal.id,
                    'display_name': sp_config['display_name']
                }

                # Create application password if configured
                if self.config['settings']['create_secrets']:
                    password = self._create_application_password(app.id, sp_config['display_name'])
                    if password:
                        sp_info['secret_id'] = password.key_id

                self.results[sp_config['name']] = sp_info
                logger.info("Successfully created service principal: %s", sp_config['display_name'])

            except (ValueError, KeyError) as e:
                logger.error("Configuration error for service principal %s: %s", sp_config['display_name'], e)
                sys.exit(1)
            except ConnectionError as e:
                logger.error("Connection error creating service principal %s: %s", sp_config['display_name'], e)
                sys.exit(1)

        logger.info("All service principals created successfully")
        return self.results

    def output_results(self) -> None:
        """Output results in GitHub Actions format"""
        output = {'service_principals': self.results}
        json_output = json.dumps(output, indent=2)

        # Output for GitHub Actions
        print(f"::set-output name=service_principals::{json.dumps(output)}")

        # Also print readable format
        logger.info("Service Principal Creation Results:")
        logger.info(json_output)


def main():
    """Main execution function"""
    try:
        # Create service principal manager
        manager = ServicePrincipalManager()

        # Create all service principals
        manager.create_service_principals()

        # Output results
        manager.output_results()

        logger.info("Service principal creation completed successfully!")

    except (ValueError, KeyError) as e:
        logger.error("Configuration error: %s", e)
        sys.exit(1)
    except ConnectionError as e:
        logger.error("Connection error: %s", e)
        sys.exit(1)
    except ImportError as e:
        logger.error("Import error: %s", e)
        sys.exit(1)


if __name__ == "__main__":
    main()