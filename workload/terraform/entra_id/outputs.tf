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

# Windows Device Management workspace service principal
output "m365_device_management_windows_tenant_id" {
  description = "Tenant ID for Windows Device Management workspace"
  value       = data.azuread_client_config.current.tenant_id
  sensitive   = true
}

output "m365_device_management_windows_client_id" {
  description = "Client ID for Windows Device Management workspace service principal"
  value       = azuread_application.m365_device_management_windows.client_id
  sensitive   = true
}

output "m365_device_management_windows_client_secret" {
  description = "Client secret for Windows Device Management workspace service principal"
  value       = azuread_application_password.m365_device_management_windows.value
  sensitive   = true
}

output "m365_device_management_windows_object_id" {
  description = "Object ID for Windows Device Management workspace service principal"
  value       = azuread_service_principal.m365_device_management_windows.object_id
}

# macOS Device Management workspace service principal
output "m365_device_management_macos_tenant_id" {
  description = "Tenant ID for macOS Device Management workspace"
  value       = data.azuread_client_config.current.tenant_id
  sensitive   = true
}

output "m365_device_management_macos_client_id" {
  description = "Client ID for macOS Device Management workspace service principal"
  value       = azuread_application.m365_device_management_macos.client_id
  sensitive   = true
}

output "m365_device_management_macos_client_secret" {
  description = "Client secret for macOS Device Management workspace service principal"
  value       = azuread_application_password.m365_device_management_macos.value
  sensitive   = true
}

output "m365_device_management_macos_object_id" {
  description = "Object ID for macOS Device Management workspace service principal"
  value       = azuread_service_principal.m365_device_management_macos.object_id
}

# Android Device Management workspace service principal
output "m365_device_management_android_tenant_id" {
  description = "Tenant ID for Android Device Management workspace"
  value       = data.azuread_client_config.current.tenant_id
  sensitive   = true
}

output "m365_device_management_android_client_id" {
  description = "Client ID for Android Device Management workspace service principal"
  value       = azuread_application.m365_device_management_android.client_id
  sensitive   = true
}

output "m365_device_management_android_client_secret" {
  description = "Client secret for Android Device Management workspace service principal"
  value       = azuread_application_password.m365_device_management_android.value
  sensitive   = true
}

output "m365_device_management_android_object_id" {
  description = "Object ID for Android Device Management workspace service principal"
  value       = azuread_service_principal.m365_device_management_android.object_id
}

# iOS/iPadOS Device Management workspace service principal
output "m365_device_management_ios_ipados_tenant_id" {
  description = "Tenant ID for iOS/iPadOS Device Management workspace"
  value       = data.azuread_client_config.current.tenant_id
  sensitive   = true
}

output "m365_device_management_ios_ipados_client_id" {
  description = "Client ID for iOS/iPadOS Device Management workspace service principal"
  value       = azuread_application.m365_device_management_ios_ipados.client_id
  sensitive   = true
}

output "m365_device_management_ios_ipados_client_secret" {
  description = "Client secret for iOS/iPadOS Device Management workspace service principal"
  value       = azuread_application_password.m365_device_management_ios_ipados.value
  sensitive   = true
}

output "m365_device_management_ios_ipados_object_id" {
  description = "Object ID for iOS/iPadOS Device Management workspace service principal"
  value       = azuread_service_principal.m365_device_management_ios_ipados.object_id
}

# Linux Device Management workspace service principal
output "m365_device_management_linux_tenant_id" {
  description = "Tenant ID for Linux Device Management workspace"
  value       = data.azuread_client_config.current.tenant_id
  sensitive   = true
}

output "m365_device_management_linux_client_id" {
  description = "Client ID for Linux Device Management workspace service principal"
  value       = azuread_application.m365_device_management_linux.client_id
  sensitive   = true
}

output "m365_device_management_linux_client_secret" {
  description = "Client secret for Linux Device Management workspace service principal"
  value       = azuread_application_password.m365_device_management_linux.value
  sensitive   = true
}

output "m365_device_management_linux_object_id" {
  description = "Object ID for Linux Device Management workspace service principal"
  value       = azuread_service_principal.m365_device_management_linux.object_id
}

# Windows 365 Device Management workspace service principal
output "m365_device_management_windows_365_tenant_id" {
  description = "Tenant ID for Windows 365 Device Management workspace"
  value       = data.azuread_client_config.current.tenant_id
  sensitive   = true
}

output "m365_device_management_windows_365_client_id" {
  description = "Client ID for Windows 365 Device Management workspace service principal"
  value       = azuread_application.m365_device_management_windows_365.client_id
  sensitive   = true
}

output "m365_device_management_windows_365_client_secret" {
  description = "Client secret for Windows 365 Device Management workspace service principal"
  value       = azuread_application_password.m365_device_management_windows_365.value
  sensitive   = true
}

output "m365_device_management_windows_365_object_id" {
  description = "Object ID for Windows 365 Device Management workspace service principal"
  value       = azuread_service_principal.m365_device_management_windows_365.object_id
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
    device_management_windows = {
      display_name = azuread_application.m365_device_management_windows.display_name
      client_id    = azuread_application.m365_device_management_windows.client_id
      object_id    = azuread_service_principal.m365_device_management_windows.object_id
    }
    device_management_macos = {
      display_name = azuread_application.m365_device_management_macos.display_name
      client_id    = azuread_application.m365_device_management_macos.client_id
      object_id    = azuread_service_principal.m365_device_management_macos.object_id
    }
    device_management_android = {
      display_name = azuread_application.m365_device_management_android.display_name
      client_id    = azuread_application.m365_device_management_android.client_id
      object_id    = azuread_service_principal.m365_device_management_android.object_id
    }
    device_management_ios_ipados = {
      display_name = azuread_application.m365_device_management_ios_ipados.display_name
      client_id    = azuread_application.m365_device_management_ios_ipados.client_id
      object_id    = azuread_service_principal.m365_device_management_ios_ipados.object_id
    }
    device_management_linux = {
      display_name = azuread_application.m365_device_management_linux.display_name
      client_id    = azuread_application.m365_device_management_linux.client_id
      object_id    = azuread_service_principal.m365_device_management_linux.object_id
    }
    device_management_windows_365 = {
      display_name = azuread_application.m365_device_management_windows_365.display_name
      client_id    = azuread_application.m365_device_management_windows_365.client_id
      object_id    = azuread_service_principal.m365_device_management_windows_365.object_id
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
    device_management_windows = {
      M365_TENANT_ID     = data.azuread_client_config.current.tenant_id
      M365_CLIENT_ID     = azuread_application.m365_device_management_windows.client_id
      M365_CLIENT_SECRET = azuread_application_password.m365_device_management_windows.value
    }
    device_management_macos = {
      M365_TENANT_ID     = data.azuread_client_config.current.tenant_id
      M365_CLIENT_ID     = azuread_application.m365_device_management_macos.client_id
      M365_CLIENT_SECRET = azuread_application_password.m365_device_management_macos.value
    }
    device_management_android = {
      M365_TENANT_ID     = data.azuread_client_config.current.tenant_id
      M365_CLIENT_ID     = azuread_application.m365_device_management_android.client_id
      M365_CLIENT_SECRET = azuread_application_password.m365_device_management_android.value
    }
    device_management_ios_ipados = {
      M365_TENANT_ID     = data.azuread_client_config.current.tenant_id
      M365_CLIENT_ID     = azuread_application.m365_device_management_ios_ipados.client_id
      M365_CLIENT_SECRET = azuread_application_password.m365_device_management_ios_ipados.value
    }
    device_management_linux = {
      M365_TENANT_ID     = data.azuread_client_config.current.tenant_id
      M365_CLIENT_ID     = azuread_application.m365_device_management_linux.client_id
      M365_CLIENT_SECRET = azuread_application_password.m365_device_management_linux.value
    }
    device_management_windows_365 = {
      M365_TENANT_ID     = data.azuread_client_config.current.tenant_id
      M365_CLIENT_ID     = azuread_application.m365_device_management_windows_365.client_id
      M365_CLIENT_SECRET = azuread_application_password.m365_device_management_windows_365.value
    }
  }
  sensitive = true
}