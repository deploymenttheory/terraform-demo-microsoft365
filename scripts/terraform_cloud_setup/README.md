# Terraform Cloud Setup Script

This Go script sets up Terraform Cloud workspaces for the Microsoft 365 project. It creates:

1. A project named "microsoft_365" in your Terraform Cloud organization
2. Three workspaces (sandbox, staging, production) with appropriate tags and configurations
3. Variable sets for Microsoft 365 authentication methods (client certificate, client secret, managed identity, and workload identity)
4. A common variable set with shared configuration for all workspaces

## Prerequisites

- Go 1.20 or later
- A Terraform Cloud account with organization admin privileges
- A Terraform Cloud API token

## Setup

1. Set your Terraform Cloud API token as an environment variable:

```bash
export TFE_ORG_TOKEN=your_terraform_cloud_org_token
```

2. Install dependencies:

```bash
cd scripts
go mod tidy
```

3. Run the script:

```bash
# Run with default settings
go run terraform_cloud_setup.go

# Run with custom settings
go run terraform_cloud_setup.go -org "your-org-name" -tf-version "1.7.3" -exec-mode "remote"
```

## Command-Line Options

The script supports the following command-line flags:

| Flag | Description | Default |
|------|-------------|---------|
| `-org` | Terraform Cloud organization name | `deploymenttheory` |
| `-project` | Project name | `microsoft_365` |
| `-desc` | Project description | `Microsoft 365 Terraform management project` |
| `-tf-version` | Terraform version | `1.7.0` |
| `-exec-mode` | Default execution mode (only used as fallback) | `remote` |
| `-auto-apply` | Enable auto-apply for dev environments | `false` |
| `-speculative` | Enable speculative plans | `true` |
| `-dry-run` | Dry run mode (don't make any changes) | `false` |

## Workspace Configuration

The script creates three workspaces with different configurations:

| Workspace | Environment | Workflow Type | Auto-Apply |
|-----------|-------------|--------------|------------|
| microsoft365-sandbox | Development | CLI-driven | Configurable |
| microsoft365-staging | Testing | API-driven | False |
| microsoft365-production | Production | API-driven | False |

- **CLI-driven workflow**: Allows running Terraform commands locally while storing state in Terraform Cloud
- **API-driven workflow**: Runs operations in Terraform Cloud, triggered via API or UI

### Environment Separation

Instead of using separate directories for each environment (which would violate DRY principles by duplicating code), this setup uses Terraform Cloud workspaces to separate environments. All workspaces use the same Terraform code from the repository root, but maintain separate state files and variable values.

This approach allows you to:
- Maintain a single codebase for all environments
- Use environment-specific variables to customize behavior
- Keep separate state files for each environment
- Apply changes to environments independently

### Environment-Specific Variables

Each workspace is configured with the following environment-specific variables:

| Variable | Category | Description |
|----------|----------|-------------|
| `TF_WORKSPACE` | Environment | Terraform workspace name (e.g., "sandbox", "staging", "production") |
| `environment` | Terraform | Environment name for use in Terraform code |
| `is_production` | Terraform | Boolean flag indicating if this is the production environment |

You can reference these variables in your Terraform code to conditionally apply configurations based on the environment.

## Variable Sets Created

The script creates the following variable sets:

### Common Variables

- `M365_CLOUD`: Microsoft 365 cloud environment (public, dod, gcc, gcchigh, china, ex, rx)
- `TF_LOG`: Terraform log level
- `M365_DEBUG_MODE`: Enable debug mode for Microsoft 365 provider

### Client Certificate Authentication

- `M365_TENANT_ID`: Microsoft 365 tenant ID
- `M365_CLIENT_ID`: Microsoft 365 client ID
- `M365_AUTH_METHOD`: Set to "client_certificate"
- `M365_CLIENT_CERTIFICATE_FILE_PATH`: Path to client certificate file
- `M365_CLIENT_CERTIFICATE_PASSWORD`: Password for client certificate

### Client Secret Authentication

- `M365_TENANT_ID`: Microsoft 365 tenant ID
- `M365_CLIENT_ID`: Microsoft 365 client ID
- `M365_AUTH_METHOD`: Set to "client_secret"
- `M365_CLIENT_SECRET`: Client secret for Microsoft 365 authentication

### Managed Identity Authentication

- `M365_TENANT_ID`: Microsoft 365 tenant ID
- `M365_CLIENT_ID`: Microsoft 365 client ID
- `M365_AUTH_METHOD`: Set to "managed_identity"
- `M365_MANAGED_IDENTITY_ID`: Managed identity ID (optional, for user-assigned identity)

### Workload Identity Authentication

- `M365_TENANT_ID`: Microsoft 365 tenant ID
- `M365_CLIENT_ID`: Microsoft 365 client ID
- `M365_AUTH_METHOD`: Set to "workload_identity"
- `AZURE_FEDERATED_TOKEN_FILE`: Path to the Kubernetes service account token file

After running the script, you'll need to set the actual values for these variables in the Terraform Cloud UI.

## Adding New Authentication Methods

To add support for additional authentication methods:

1. Create a new function similar to `getClientCertificateAuthMethod()` with the appropriate variables
2. Add the new authentication method to the `authMethods` slice in the `main()` function

## Features

- **Idempotent Operation**: Safely run multiple times without creating duplicates
- **Workspace Configuration**: Sets execution mode, Terraform version, working directory, and more
- **Multiple Authentication Methods**: Supports client certificate, client secret, managed identity, and workload identity
- **Command-Line Flags**: Customize behavior without modifying code
- **Dry Run Mode**: Preview changes without applying them
- **Environment-Specific Settings**: Different configurations for sandbox, staging, and production 