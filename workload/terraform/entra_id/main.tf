# Service Principals for Microsoft 365 Terraform workspaces
# This configuration creates dedicated service principals for each M365 workspace

# Service Principal for Microsoft 365 Groups workspace
resource "azuread_application" "m365_groups" {
  display_name = "Terraform-M365-Groups-${var.environment}"
  description  = "Service Principal for Microsoft 365 Groups Terraform workspace"

  required_resource_access {
    resource_app_id = "00000003-0000-0000-c000-000000000000" # Microsoft Graph

    resource_access {
      id   = "19dbc75e-c2e2-444c-a770-ec69d8559fc7" # Directory.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "62a82d76-70ea-41e2-9197-370581804d09" # Group.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "9a5d68dd-52b0-4cc2-bd40-abcf44ac3a30" # Application.Read.All
      type = "Role"
    }
  }

  tags = [
    "terraform",
    "microsoft365",
    "groups",
    var.environment
  ]
}

resource "azuread_service_principal" "m365_groups" {
  client_id                    = azuread_application.m365_groups.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  tags = [
    "terraform",
    "microsoft365",
    "groups",
    var.environment
  ]
}

resource "azuread_application_password" "m365_groups" {
  application_id = azuread_application.m365_groups.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}

# Service Principal for Microsoft 365 Device Management Shared workspace
resource "azuread_application" "m365_device_management_shared" {
  display_name = "Terraform-M365-DeviceMgmt-Shared-${var.environment}"
  description  = "Service Principal for Microsoft 365 Device Management Shared Terraform workspace"

  required_resource_access {
    resource_app_id = "00000003-0000-0000-c000-000000000000" # Microsoft Graph

    resource_access {
      id   = "19dbc75e-c2e2-444c-a770-ec69d8559fc7" # Directory.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "62a82d76-70ea-41e2-9197-370581804d09" # Group.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "9a5d68dd-52b0-4cc2-bd40-abcf44ac3a30" # Application.Read.All
      type = "Role"
    }

    resource_access {
      id   = "e2a3a72e-5f79-4c64-b1b1-878b674786d9" # DeviceManagementConfiguration.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "243333ab-4d21-40cb-a475-36241daa0842" # DeviceManagementManagedDevices.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "5b07b0dd-2377-4e44-a38d-703f09a0dc3c" # DeviceManagementApps.ReadWrite.All
      type = "Role"
    }
  }

  tags = [
    "terraform",
    "microsoft365",
    "device-management",
    "shared",
    var.environment
  ]
}

resource "azuread_service_principal" "m365_device_management_shared" {
  client_id                    = azuread_application.m365_device_management_shared.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  tags = [
    "terraform",
    "microsoft365",
    "device-management",
    "shared",
    var.environment
  ]
}

resource "azuread_application_password" "m365_device_management_shared" {
  application_id = azuread_application.m365_device_management_shared.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}

# Service Principal for Microsoft 365 Device Management Platform workspaces
resource "azuread_application" "m365_device_management_platforms" {
  display_name = "Terraform-M365-DeviceMgmt-Platforms-${var.environment}"
  description  = "Service Principal for Microsoft 365 Device Management Platform Terraform workspaces"

  required_resource_access {
    resource_app_id = "00000003-0000-0000-c000-000000000000" # Microsoft Graph

    resource_access {
      id   = "19dbc75e-c2e2-444c-a770-ec69d8559fc7" # Directory.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "62a82d76-70ea-41e2-9197-370581804d09" # Group.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "9a5d68dd-52b0-4cc2-bd40-abcf44ac3a30" # Application.Read.All
      type = "Role"
    }

    resource_access {
      id   = "e2a3a72e-5f79-4c64-b1b1-878b674786d9" # DeviceManagementConfiguration.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "243333ab-4d21-40cb-a475-36241daa0842" # DeviceManagementManagedDevices.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "5b07b0dd-2377-4e44-a38d-703f09a0dc3c" # DeviceManagementApps.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "7438b122-aefc-4978-80ed-43db9fcc7715" # DeviceManagementServiceConfig.ReadWrite.All
      type = "Role"
    }

    resource_access {
      id   = "dc149144-f292-421e-b185-5953f2e98d7f" # DeviceManagementRBAC.ReadWrite.All
      type = "Role"
    }
  }

  tags = [
    "terraform",
    "microsoft365",
    "device-management",
    "platforms",
    var.environment
  ]
}

resource "azuread_service_principal" "m365_device_management_platforms" {
  client_id                    = azuread_application.m365_device_management_platforms.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  tags = [
    "terraform",
    "microsoft365",
    "device-management",
    "platforms",
    var.environment
  ]
}

resource "azuread_application_password" "m365_device_management_platforms" {
  application_id = azuread_application.m365_device_management_platforms.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}