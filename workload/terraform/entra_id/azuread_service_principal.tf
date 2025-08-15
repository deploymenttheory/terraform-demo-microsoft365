resource "azuread_service_principal" "m365_device_management_windows" {
  client_id                    = azuread_application.m365_device_management_windows.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  tags = [
    "terraform",
    "microsoft365",
    "device-management",
    "windows"
  ]
}

resource "azuread_service_principal" "m365_groups" {
  client_id                    = azuread_application.m365_groups.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  tags = [
    "terraform",
    "microsoft365",
    "groups"
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
    "shared"
  ]
}

resource "azuread_service_principal" "m365_device_management_macos" {
  client_id                    = azuread_application.m365_device_management_macos.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  tags = [
    "terraform",
    "microsoft365",
    "device-management",
    "macos"
  ]
}

resource "azuread_service_principal" "m365_device_management_android" {
  client_id                    = azuread_application.m365_device_management_android.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  tags = [
    "terraform",
    "microsoft365",
    "device-management",
    "android"
  ]
}

resource "azuread_service_principal" "m365_device_management_ios_ipados" {
  client_id                    = azuread_application.m365_device_management_ios_ipados.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  tags = [
    "terraform",
    "microsoft365",
    "device-management",
    "ios-ipados"
  ]
}

resource "azuread_service_principal" "m365_device_management_linux" {
  client_id                    = azuread_application.m365_device_management_linux.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  tags = [
    "terraform",
    "microsoft365",
    "device-management",
    "linux"
  ]
}

resource "azuread_service_principal" "m365_device_management_windows_365" {
  client_id                    = azuread_application.m365_device_management_windows_365.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

  tags = [
    "terraform",
    "microsoft365",
    "device-management",
    "windows-365"
  ]
}