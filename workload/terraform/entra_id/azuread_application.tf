# Service Principals for Microsoft 365 Terraform workspaces
# This configuration creates dedicated service principals for each M365 workspace

# Service Principal for Microsoft 365 Groups workspace
resource "azuread_application" "m365_groups" {
  display_name = "sp-tf-m365-groups"
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
    "groups"
  ]
}



# Service Principal for Microsoft 365 Device Management Shared workspace
resource "azuread_application" "m365_device_management_shared" {
  display_name = "sp-tf-device-and-app-management-shared"
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
    "shared"
  ]
}




# Service Principal for Windows device management
resource "azuread_application" "m365_device_management_windows" {
  display_name = "sp-tf-device-and-app-management-windows"
  description  = "Service Principal for Microsoft 365 Windows Device Management Terraform workspace"

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
    "windows"
  ]
}



# Service Principal for macOS device management
resource "azuread_application" "m365_device_management_macos" {
  display_name = "sp-tf-device-and-app-management-macos"
  description  = "Service Principal for Microsoft 365 macOS Device Management Terraform workspace"

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
    "macos"
  ]
}




# Service Principal for Android device management
resource "azuread_application" "m365_device_management_android" {
  display_name = "sp-tf-device-and-app-management-android"
  description  = "Service Principal for Microsoft 365 Android Device Management Terraform workspace"

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
    "android"
  ]
}




# Service Principal for iOS/iPadOS device management
resource "azuread_application" "m365_device_management_ios_ipados" {
  display_name = "sp-tf-device-and-app-management-ios-ipados"
  description  = "Service Principal for Microsoft 365 iOS/iPadOS Device Management Terraform workspace"

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
    "ios-ipados"
  ]
}




# Service Principal for Linux device management
resource "azuread_application" "m365_device_management_linux" {
  display_name = "sp-tf-device-and-app-management-linux"
  description  = "Service Principal for Microsoft 365 Linux Device Management Terraform workspace"

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
    "linux"
  ]
}




# Service Principal for Windows 365 device management
resource "azuread_application" "m365_device_management_windows_365" {
  display_name = "sp-tf-device-and-app-management-windows-365"
  description  = "Service Principal for Microsoft 365 Windows 365 Device Management Terraform workspace"

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
    "windows-365"
  ]
}



