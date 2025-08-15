# Terraform Cloud Setup with Terraform

This directory contains Terraform configuration to set up Terraform Cloud workspaces for the Microsoft 365 project using the domain workspace pattern. The configuration is organized into resource-specific files following TFE provider naming conventions and uses the latest provider version (0.68.2).

## Overview

This setup creates a comprehensive Terraform Cloud infrastructure for Microsoft 365 management:

### Core Resources
- **1 TFE Project**: Centralized Microsoft 365 project
- **45 TFE Workspaces**: Domain-specific workspaces across 3 environments
- **Variable Management**: Common and workspace-specific variables
- **Terraform Versions**: Organization-level version management
- **Provider Registry**: Microsoft 365 and additional provider access

### Key Features
- **Domain Workspace Pattern**: Separate workspaces for different Microsoft 365 domains
- **Environment Separation**: Sandbox, staging, and production environments
- **Platform-Specific Variables**: Tailored configuration for Windows, macOS, iOS, Android, Linux
- **Remote Execution**: All operations run in Terraform Cloud infrastructure
- **Version Control Integration**: Optional VCS repository linking
- **Policy & Governance**: Optional policy sets and team access controls

## Domain Workspaces Created

The configuration creates workspaces following the pattern: `m365_{domain}_{environment}`

### Domains:
- **Device Management**: `device_management_windows`, `device_management_macos`, `device_management_android`, `device_management_ios_ipados`, `device_management_linux`, `device_management_windows_365`, `device_management_shared`
- **Device and App Management**: `device_and_app_management_windows`, `device_and_app_management_macos`, `device_and_app_management_android`, `device_and_app_management_ios_ipados`, `device_and_app_management_linux`, `device_and_app_management_windows_365`
- **Groups**: `groups`

### Environments:
- **sandbox**: Development environment with configurable auto-apply
- **staging**: Testing environment with auto-apply enabled
- **production**: Production environment with auto-apply disabled and destroy protection

## Prerequisites

1. **Terraform CLI** (>= 1.0)
2. **Terraform Cloud account** with organization admin privileges
3. **Terraform Cloud API token**

## Setup Instructions

1. **Set your Terraform Cloud token**:
   ```bash
   export TFE_TOKEN=your_terraform_cloud_api_token
   ```

2. **Copy and customize variables**:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   # Edit terraform.tfvars with your values
   ```

3. **Initialize Terraform**:
   ```bash
   terraform init
   ```

4. **Plan the deployment**:
   ```bash
   terraform plan
   ```

5. **Apply the configuration**:
   ```bash
   terraform apply
   ```

## File Structure

The configuration is organized into resource-specific files following TFE provider naming:

- `main.tf` - Provider configuration and requirements
- `data_sources.tf` - Data sources for existing resources
- `locals.tf` - Local values and computed configurations
- `variables.tf` - Input variables
- `outputs.tf` - Output values
- `terraform.tfvars.example` - Example variable values

### TFE Resource Files:
- `tfe_project.tf` - Project resource
- `tfe_workspace.tf` - Workspace resources
- `tfe_workspace_settings.tf` - Workspace settings
- `tfe_variable_set.tf` - Variable set resources
- `tfe_project_variable_set.tf` - Project variable set associations
- `tfe_variable.tf` - Variable resources
- `tfe_terraform_version.tf` - Terraform version management
- `tfe_registry_provider.tf` - Provider registry configuration
- `platform_specific_variables.tf` - Platform-specific variables

### Optional Resource Files (commented out by default):
- `tfe_policy_set.tf` - Policy sets for governance
- `tfe_notification_configuration.tf` - Slack/email notifications
- `tfe_team_access.tf` - Team access permissions

## Configuration Options

### Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `organization_name` | Terraform Cloud organization name | `deploymenttheory` |
| `project_name` | Project name | `microsoft_365` |
| `project_description` | Project description | `Microsoft 365 managed as code` |
| `terraform_version` | Terraform version for workspaces | `1.12.2` |
| `auto_apply_sandbox` | Enable auto-apply for sandbox environments | `false` |
| `speculative_enabled` | Enable speculative plans | `true` |
| `m365_cloud` | Microsoft 365 cloud environment | `public` |
| `tf_log_level` | Terraform log level | `INFO` |
| `m365_debug_mode` | Enable M365 provider debug mode | `false` |
| `m365_telemetry_optout` | Opt out of M365 provider telemetry | `true` |
| `tfe_parallelism` | Terraform Cloud parallelism | `1` |
| `slack_webhook_url` | Slack webhook URL for notifications | `""` (sensitive) |
| `notification_email_addresses` | List of email addresses for notifications | `[]` |
| `enable_policies` | Enable policy sets for workspaces | `false` |
| `enable_notifications` | Enable notification configurations | `false` |
| `enable_team_access` | Enable team access configurations | `false` |
| `vcs_repo_staging` | VCS repository configuration for staging workspaces | `null` |
| `vcs_repo_production` | VCS repository configuration for production workspaces | `null` |
| `terraform_versions` | List of Terraform versions to make available | `["1.12.2", "1.11.7", "1.10.8"]` |
| `terraform_version_shas` | SHA256 checksums for Terraform versions | See variables.tf |
| `enable_additional_providers` | Enable additional providers in registry | `true` |

### Workspace Features by Environment

#### **Sandbox Workspaces (CLI-driven)**
- **Execution Mode**: Local (CLI-driven)
- **File Triggers**: Disabled
- **VCS Integration**: None (manual uploads)
- **Auto-Apply**: Configurable via `auto_apply_sandbox`
- **Allow Destroy**: True
- **Use Case**: Development and testing

#### **Staging Workspaces (VCS-driven)**
- **Execution Mode**: Remote (VCS-driven)
- **File Triggers**: Enabled
- **VCS Integration**: Optional staging branch
- **Auto-Apply**: Always enabled
- **Auto-Apply Run Trigger**: Enabled
- **Allow Destroy**: True
- **Use Case**: Automated testing and validation

#### **Production Workspaces (VCS-driven)**
- **Execution Mode**: Remote (VCS-driven)
- **File Triggers**: Enabled
- **VCS Integration**: Optional main branch
- **Auto-Apply**: Always disabled (manual approval required)
- **Auto-Apply Run Trigger**: Disabled
- **Allow Destroy**: False (destroy protection)
- **Use Case**: Production deployments with manual approval

### Additional Features
- **Global remote state**: Enabled for shared resources (groups, shared device management)
- **Assessments**: Enabled for all workspaces
- **Structured run output**: Enabled for all workspaces

## Resources Created

### Core Infrastructure
- **1 TFE Project**: `microsoft_365`
- **45 TFE Workspaces**: 15 domains × 3 environments (sandbox, staging, production)
- **1 Variable Set**: Common variables applied to all workspaces
- **Terraform Versions**: Configurable list of available Terraform versions
- **Registry Providers**: Microsoft 365 and optional additional providers

### Workspace Naming Pattern
All workspaces follow the pattern: `m365_{domain}_{environment}`

Examples:
- `m365_device_management_windows_sandbox`
- `m365_device_management_windows_staging`
- `m365_device_management_windows_production`
- `m365_groups_sandbox`
- etc.

## Variables Created

### Common Variables (via Variable Set)
Applied to all workspaces:
- `M365_CLOUD`: Microsoft 365 cloud environment (default: "public")
- `TF_LOG`: Terraform log level (default: "INFO")
- `M365_DEBUG_MODE`: Debug mode for M365 provider (default: "false")
- `M365_TELEMETRY_OPTOUT`: Telemetry opt-out (default: "true")
- `TFE_PARALLELISM`: Terraform Cloud parallelism (default: "1")

### Workspace-Specific Variables
Each workspace receives:
- `TF_WORKSPACE`: Workspace name
- `environment`: Environment name (sandbox/staging/production)
- `is_production`: Boolean flag for production environment
- `workspace_type`: Type of workspace (windows, macos, etc.)
- `target_platform`: Target platform for device/app management

### Authentication Variables (Empty Placeholders)
- `tenant_id`: Microsoft 365 tenant ID (sensitive)
- `auth_method`: Authentication method
- `client_id`: Microsoft 365 client ID (sensitive)
- `client_secret`: Client secret (sensitive)
- `client_certificate_file_path`: Certificate file path (sensitive)
- `client_certificate_password`: Certificate password (sensitive)

### Platform-Specific Variables
Different platforms receive additional variables:
- **Windows**: `device_categories`
- **macOS**: `macos_enrollment_type`
- **Android**: `android_management_type`
- **iOS**: `ios_enrollment_type`
- **Linux**: `linux_management_type`
- **Windows 365**: `w365_provisioning_type`
- **Groups**: `group_assignment_scope`
- **Shared**: `shared_resource_scope`
- **App Management**: `app_deployment_scope`

## Example Workspaces Created

With default settings, this creates 45 workspaces (15 domains × 3 environments):

```
m365_device_management_windows_sandbox
m365_device_management_windows_staging  
m365_device_management_windows_production
m365_device_management_macos_sandbox
...
m365_groups_production
```

## Terraform Version Management

The configuration manages Terraform versions available in your organization:

- **Default Versions**: 1.12.2, 1.11.7, 1.10.8
- **Configurable**: Add/remove versions via `terraform_versions` variable
- **SHA Validation**: Each version includes SHA256 checksum for security
- **Automatic URLs**: Downloads from official HashiCorp releases

## Provider Registry Configuration

The setup configures provider registry access:

### Microsoft 365 Provider
- **Registry**: Private registry
- **Namespace**: Your organization name
- **Purpose**: Custom Microsoft 365 provider for Intune/Graph management

### Optional Additional Providers
When `enable_additional_providers = true`:
- **azuread**: Azure Active Directory provider
- **azurerm**: Azure Resource Manager provider  
- **random**: Random value generation
- **time**: Time-based resources

All additional providers are sourced from HashiCorp's public registry.

## Post-Deployment

After running `terraform apply`:

1. **Set authentication values**: Go to Terraform Cloud UI and populate the authentication variables for each workspace
2. **Configure VCS integration**: Link workspaces to your version control system if desired
3. **Review workspace settings**: Verify trigger patterns and other settings in the Terraform Cloud UI
4. **Verify Terraform versions**: Check that the specified Terraform versions are available in your organization
5. **Confirm provider registry**: Verify that providers are accessible in the private registry

## Managing Changes

To modify the configuration:
1. Update the Terraform files
2. Run `terraform plan` to review changes
3. Run `terraform apply` to implement changes

## Cleanup

To remove all created resources:
```bash
terraform destroy
```

**Warning**: This will delete all workspaces and their state. Ensure you have backups if needed.