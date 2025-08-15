# Outputs for service principal credentials
# These values will be used to configure the downstream Terraform workspaces

# Groups workspace service principal
output "m365_groups_tenant_id" {
  description = "Tenant ID for Groups workspace"
  value       = data.azuread_client_config.current.tenant_id
  sensitive   = true
}

output "m365_groups_client_id" {
  description = "Client ID for Groups workspace service principal"
  value       = azuread_application.m365_groups.client_id
  sensitive   = true
}

output "m365_groups_client_secret" {
  description = "Client secret for Groups workspace service principal"
  value       = azuread_application_password.m365_groups.value
  sensitive   = true
}

output "m365_groups_object_id" {
  description = "Object ID for Groups workspace service principal"
  value       = azuread_service_principal.m365_groups.object_id
}

# Device Management Shared workspace service principal
output "m365_device_management_shared_tenant_id" {
  description = "Tenant ID for Device Management Shared workspace"
  value       = data.azuread_client_config.current.tenant_id
  sensitive   = true
}

output "m365_device_management_shared_client_id" {
  description = "Client ID for Device Management Shared workspace service principal"
  value       = azuread_application.m365_device_management_shared.client_id
  sensitive   = true
}

output "m365_device_management_shared_client_secret" {
  description = "Client secret for Device Management Shared workspace service principal"
  value       = azuread_application_password.m365_device_management_shared.value
  sensitive   = true
}

output "m365_device_management_shared_object_id" {
  description = "Object ID for Device Management Shared workspace service principal"
  value       = azuread_service_principal.m365_device_management_shared.object_id
}

# Device Management Platforms workspace service principal
output "m365_device_management_platforms_tenant_id" {
  description = "Tenant ID for Device Management Platforms workspaces"
  value       = data.azuread_client_config.current.tenant_id
  sensitive   = true
}

output "m365_device_management_platforms_client_id" {
  description = "Client ID for Device Management Platforms workspaces service principal"
  value       = azuread_application.m365_device_management_platforms.client_id
  sensitive   = true
}

output "m365_device_management_platforms_client_secret" {
  description = "Client secret for Device Management Platforms workspaces service principal"
  value       = azuread_application_password.m365_device_management_platforms.value
  sensitive   = true
}

output "m365_device_management_platforms_object_id" {
  description = "Object ID for Device Management Platforms workspaces service principal"
  value       = azuread_service_principal.m365_device_management_platforms.object_id
}

# Summary output for easy reference
output "service_principals_summary" {
  description = "Summary of created service principals"
  value = {
    groups = {
      display_name = azuread_application.m365_groups.display_name
      client_id    = azuread_application.m365_groups.client_id
      object_id    = azuread_service_principal.m365_groups.object_id
    }
    device_management_shared = {
      display_name = azuread_application.m365_device_management_shared.display_name
      client_id    = azuread_application.m365_device_management_shared.client_id
      object_id    = azuread_service_principal.m365_device_management_shared.object_id
    }
    device_management_platforms = {
      display_name = azuread_application.m365_device_management_platforms.display_name
      client_id    = azuread_application.m365_device_management_platforms.client_id
      object_id    = azuread_service_principal.m365_device_management_platforms.object_id
    }
  }
}

# Terraform Cloud workspace configuration helpers
output "tfc_workspace_env_vars" {
  description = "Environment variables to configure in Terraform Cloud workspaces"
  value = {
    groups = {
      M365_TENANT_ID     = data.azuread_client_config.current.tenant_id
      M365_CLIENT_ID     = azuread_application.m365_groups.client_id
      M365_CLIENT_SECRET = azuread_application_password.m365_groups.value
    }
    device_management_shared = {
      M365_TENANT_ID     = data.azuread_client_config.current.tenant_id
      M365_CLIENT_ID     = azuread_application.m365_device_management_shared.client_id
      M365_CLIENT_SECRET = azuread_application_password.m365_device_management_shared.value
    }
    device_management_platforms = {
      M365_TENANT_ID     = data.azuread_client_config.current.tenant_id
      M365_CLIENT_ID     = azuread_application.m365_device_management_platforms.client_id
      M365_CLIENT_SECRET = azuread_application_password.m365_device_management_platforms.value
    }
  }
  sensitive = true
}