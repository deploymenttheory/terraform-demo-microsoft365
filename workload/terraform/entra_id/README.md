# Entra ID Service Principals for Microsoft 365 Terraform Workspaces

This Terraform configuration creates dedicated service principals for each Microsoft 365 Terraform workspace, providing secure and isolated authentication for automated deployments.

## Service Principals Created

1. **Groups Workspace** (`Terraform-M365-Groups-{environment}`)
   - Permissions: Directory.ReadWrite.All, Group.ReadWrite.All, Application.Read.All
   - Used by: `m365_groups_sandbox` workspace

2. **Device Management Shared** (`Terraform-M365-DeviceMgmt-Shared-{environment}`)
   - Permissions: Directory.ReadWrite.All, Group.ReadWrite.All, DeviceManagement.*
   - Used by: `m365_device_management_shared_sandbox` workspace

3. **Device Management Platforms** (`Terraform-M365-DeviceMgmt-Platforms-{environment}`)
   - Permissions: Full device management permissions for all platforms
   - Used by: `m365_device_management_{platform}_sandbox` workspaces

## Prerequisites

1. You must have sufficient permissions in Azure AD to create applications and service principals
2. Global Administrator or Application Administrator role is recommended
3. Terraform Cloud workspaces must be created before running this configuration

## Usage

### 1. Set Required Variables

Create a `terraform.tfvars` file or set environment variables:

```hcl
# terraform.tfvars
tenant_id     = "your-tenant-id-here"
client_id     = "your-admin-app-client-id"
client_secret = "your-admin-app-client-secret"
environment   = "sandbox"
```

Or use environment variables:
```bash
export TF_VAR_tenant_id="your-tenant-id"
export TF_VAR_client_id="your-admin-app-client-id"  
export TF_VAR_client_secret="your-admin-app-client-secret"
```

### 2. Initialize and Apply

```bash
terraform init
terraform plan
terraform apply
```

### 3. Grant Admin Consent

After creating the service principals, you must grant admin consent for the API permissions:

1. Go to Azure Portal > App registrations
2. Find each created application
3. Go to API permissions
4. Click "Grant admin consent for {your-organization}"

### 4. Configure Terraform Cloud Workspaces

Use the output values to configure environment variables in your Terraform Cloud workspaces:

#### For Groups Workspace (`m365_groups_sandbox`):
- `M365_TENANT_ID` = (tenant_id output)
- `M365_CLIENT_ID` = (m365_groups_client_id output)  
- `M365_CLIENT_SECRET` = (m365_groups_client_secret output)

#### For Device Management Shared (`m365_device_management_shared_sandbox`):
- `M365_TENANT_ID` = (tenant_id output)
- `M365_CLIENT_ID` = (m365_device_management_shared_client_id output)
- `M365_CLIENT_SECRET` = (m365_device_management_shared_client_secret output)

#### For Platform Workspaces (macOS, Windows, etc.):
- `M365_TENANT_ID` = (tenant_id output)
- `M365_CLIENT_ID` = (m365_device_management_platforms_client_id output)
- `M365_CLIENT_SECRET` = (m365_device_management_platforms_client_secret output)

## Security Considerations

1. **Principle of Least Privilege**: Each service principal has only the permissions required for its specific workspace
2. **Credential Rotation**: Client secrets expire after 1 year and should be rotated
3. **Secure Storage**: All sensitive outputs are marked as sensitive in Terraform state
4. **Monitoring**: Consider enabling audit logging for these service principals

## API Permissions Reference

### Microsoft Graph API Permissions Used:

- **Directory.ReadWrite.All** (Application): Read and write directory data
- **Group.ReadWrite.All** (Application): Read and write all groups  
- **Application.Read.All** (Application): Read applications
- **DeviceManagementConfiguration.ReadWrite.All** (Application): Read and write device configuration
- **DeviceManagementManagedDevices.ReadWrite.All** (Application): Read and write managed devices
- **DeviceManagementApps.ReadWrite.All** (Application): Read and write device management apps
- **DeviceManagementServiceConfig.ReadWrite.All** (Application): Read and write device management service configuration
- **DeviceManagementRBAC.ReadWrite.All** (Application): Read and write device management RBAC settings

## Troubleshooting

1. **Insufficient Privileges**: Ensure you have Global Administrator or Application Administrator role
2. **Permission Errors**: Verify admin consent has been granted for all API permissions
3. **Authentication Failures**: Check that client secrets haven't expired and credentials are correct in Terraform Cloud
4. **Network Issues**: Ensure Terraform Cloud agents can reach Microsoft Graph APIs

## Outputs

The configuration provides several outputs for configuring downstream workspaces:

- Individual service principal credentials (sensitive)
- Service principal object IDs for reference
- Pre-formatted environment variable mappings for Terraform Cloud
- Summary information for all created service principals