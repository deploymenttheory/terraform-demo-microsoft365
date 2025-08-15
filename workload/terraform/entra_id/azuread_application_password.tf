resource "azuread_application_password" "m365_groups" {
  application_id = azuread_application.m365_groups.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}

resource "azuread_application_password" "m365_device_management_shared" {
  application_id = azuread_application.m365_device_management_shared.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}

resource "azuread_application_password" "m365_device_management_windows" {
  application_id = azuread_application.m365_device_management_windows.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}

resource "azuread_application_password" "m365_device_management_macos" {
  application_id = azuread_application.m365_device_management_macos.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}

resource "azuread_application_password" "m365_device_management_android" {
  application_id = azuread_application.m365_device_management_android.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}

resource "azuread_application_password" "m365_device_management_ios_ipados" {
  application_id = azuread_application.m365_device_management_ios_ipados.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}

resource "azuread_application_password" "m365_device_management_linux" {
  application_id = azuread_application.m365_device_management_linux.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}

resource "azuread_application_password" "m365_device_management_windows_365" {
  application_id = azuread_application.m365_device_management_windows_365.id
  display_name   = "Terraform Client Secret"
  end_date       = timeadd(timestamp(), "8760h") # 1 year from now
}