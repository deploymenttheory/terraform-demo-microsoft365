//REF: https://learn.microsoft.com/en-us/intune/intune-service/fundamentals/filters-device-properties

resource "microsoft365_graph_beta_device_management_assignment_filter" "macos_less_than_15_0" {
  display_name                      = "macOS Less Than 15.0"
  description                       = "Assignment filter for macOS devices with version less than 15.0"
  platform                          = "macOS"
  rule                              = "(device.operatingSystemVersion -lt 15.0)"
  assignment_filter_management_type = "devices"

  role_scope_tags = [8, 9]

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# CPU Architecture Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "windows_arm64_devices" {
  display_name                      = "Windows ARM64 Devices"
  description                       = "Assignment filter for Windows devices with ARM64 architecture"
  platform                          = "windows10AndLater"
  rule                              = "(device.cpuArchitecture -eq \"arm64\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "macos_apple_silicon" {
  display_name                      = "macOS Apple Silicon"
  description                       = "Assignment filter for macOS devices with Apple Silicon (ARM64)"
  platform                          = "macOS"
  rule                              = "(device.cpuArchitecture -eq \"arm64\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "windows_x64_x86_devices" {
  display_name                      = "Windows x64/x86 Devices"
  description                       = "Assignment filter for Windows devices with x64 or x86 architecture"
  platform                          = "windows10AndLater"
  rule                              = "(device.cpuArchitecture -in [\"amd64\", \"x86\"])"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Device Category Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "engineering_devices" {
  display_name                      = "Engineering Devices"
  description                       = "Assignment filter for devices in Engineering category"
  platform                          = "windows10AndLater"
  rule                              = "(device.deviceCategory -eq \"Engineering devices\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "devices_containing_test" {
  display_name                      = "Test Devices"
  description                       = "Assignment filter for devices with 'Test' in category name"
  platform                          = "windows10AndLater"
  rule                              = "(device.deviceCategory -contains \"Test\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Device Name Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "devices_starting_with_laptop" {
  display_name                      = "Laptop Devices"
  description                       = "Assignment filter for devices with names starting with 'LAPTOP'"
  platform                          = "windows10AndLater"
  rule                              = "(device.deviceName -startsWith \"LAPTOP\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "specific_device_names" {
  display_name                      = "Specific Named Devices"
  description                       = "Assignment filter for specific device names"
  platform                          = "windows10AndLater"
  rule                              = "(device.deviceName -in [\"DEV-MACHINE-01\", \"DEV-MACHINE-02\", \"TEST-DEVICE-01\"])"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Device Ownership Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "corporate_devices" {
  display_name                      = "Corporate Owned Devices"
  description                       = "Assignment filter for corporate owned devices"
  platform                          = "windows10AndLater"
  rule                              = "(device.deviceOwnership -eq \"Corporate\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "personal_devices" {
  display_name                      = "Personal Owned Devices"
  description                       = "Assignment filter for personally owned devices"
  platform                          = "iOS"
  rule                              = "(device.deviceOwnership -eq \"Personal\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Device Trust Type Filters (Windows only)
resource "microsoft365_graph_beta_device_management_assignment_filter" "azure_ad_joined_devices" {
  display_name                      = "Azure AD Joined Devices"
  description                       = "Assignment filter for Azure AD joined devices"
  platform                          = "windows10AndLater"
  rule                              = "(device.deviceTrustType -eq \"Azure AD joined\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "hybrid_azure_ad_joined" {
  display_name                      = "Hybrid Azure AD Joined"
  description                       = "Assignment filter for Hybrid Azure AD joined devices"
  platform                          = "windows10AndLater"
  rule                              = "(device.deviceTrustType -eq \"Hybrid Azure AD joined\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Enrollment Profile Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "autopilot_devices" {
  display_name                      = "Autopilot Enrolled Devices"
  description                       = "Assignment filter for devices enrolled via Autopilot"
  platform                          = "windows10AndLater"
  rule                              = "(device.enrollmentProfileName -startsWith \"Autopilot\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "dep_enrolled_ios" {
  display_name                      = "DEP Enrolled iOS Devices"
  description                       = "Assignment filter for iOS devices enrolled via DEP"
  platform                          = "iOS"
  rule                              = "(device.enrollmentProfileName -contains \"DEP\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Rooted/Jailbroken Device Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "non_rooted_android" {
  display_name                      = "Non-Rooted Android Devices"
  description                       = "Assignment filter for non-rooted Android devices"
  platform                          = "android"
  rule                              = "(device.isRooted -eq \"False\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "non_jailbroken_ios" {
  display_name                      = "Non-Jailbroken iOS Devices"
  description                       = "Assignment filter for non-jailbroken iOS devices"
  platform                          = "iOS"
  rule                              = "(device.isRooted -eq \"False\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Manufacturer Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "microsoft_devices" {
  display_name                      = "Microsoft Devices"
  description                       = "Assignment filter for Microsoft manufactured devices"
  platform                          = "windows10AndLater"
  rule                              = "(device.manufacturer -eq \"Microsoft\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "apple_devices" {
  display_name                      = "Apple Devices"
  description                       = "Assignment filter for Apple manufactured devices"
  platform                          = "macOS"
  rule                              = "(device.manufacturer -eq \"Apple\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "samsung_android" {
  display_name                      = "Samsung Android Devices"
  description                       = "Assignment filter for Samsung Android devices"
  platform                          = "android"
  rule                              = "(device.manufacturer -eq \"Samsung\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Model Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "surface_devices" {
  display_name                      = "Surface Devices"
  description                       = "Assignment filter for Surface devices"
  platform                          = "windows10AndLater"
  rule                              = "(device.model -startsWith \"Surface\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "macbook_devices" {
  display_name                      = "MacBook Devices"
  description                       = "Assignment filter for MacBook devices"
  platform                          = "macOS"
  rule                              = "(device.model -startsWith \"MacBook\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "iphone_devices" {
  display_name                      = "iPhone Devices"
  description                       = "Assignment filter for iPhone devices"
  platform                          = "iOS"
  rule                              = "(device.model -startsWith \"iPhone\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "specific_surface_models" {
  display_name                      = "Specific Surface Models"
  description                       = "Assignment filter for specific Surface models"
  platform                          = "windows10AndLater"
  rule                              = "(device.model -in [\"Surface Laptop 5\", \"Surface Pro 9\", \"Surface Studio 2+\"])"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Operating System Version Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "windows_11_22h2_or_later" {
  display_name                      = "Windows 11 22H2 or Later"
  description                       = "Assignment filter for Windows 11 22H2 or later versions"
  platform                          = "windows10AndLater"
  rule                              = "(device.operatingSystemVersion -ge 10.0.22621.0)"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "ios_16_or_later" {
  display_name                      = "iOS 16 or Later"
  description                       = "Assignment filter for iOS 16.0 or later versions"
  platform                          = "iOS"
  rule                              = "(device.operatingSystemVersion -ge 16.0)"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "android_12_to_13" {
  display_name                      = "Android 12-13"
  description                       = "Assignment filter for Android versions 12.0 to 13.9"
  platform                          = "android"
  rule                              = "(device.operatingSystemVersion -ge 12.0) and (device.operatingSystemVersion -lt 14.0)"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Operating System SKU Filters (Windows only)
resource "microsoft365_graph_beta_device_management_assignment_filter" "windows_enterprise_sku" {
  display_name                      = "Windows Enterprise SKU"
  description                       = "Assignment filter for Windows Enterprise SKU devices"
  platform                          = "windows10AndLater"
  rule                              = "(device.operatingSystemSKU -in [\"Enterprise\", \"EnterpriseN\", \"EnterpriseEval\"])"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "windows_pro_education" {
  display_name                      = "Windows Pro/Education SKU"
  description                       = "Assignment filter for Windows Professional and Education SKU devices"
  platform                          = "windows10AndLater"
  rule                              = "(device.operatingSystemSKU -in [\"Professional\", \"Education\", \"ProfessionalEducation\"])"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Complex Combined Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "corporate_windows_modern" {
  display_name                      = "Corporate Modern Windows"
  description                       = "Corporate Windows 11 devices with Azure AD joined"
  platform                          = "windows10AndLater"
  rule                              = "(device.deviceOwnership -eq \"Corporate\") and (device.operatingSystemVersion -ge 10.0.22000.0) and (device.deviceTrustType -eq \"Azure AD joined\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "executive_ios_devices" {
  display_name                      = "Executive iOS Devices"
  description                       = "Corporate iOS devices for executives with latest iOS"
  platform                          = "iOS"
  rule                              = "(device.deviceOwnership -eq \"Corporate\") and (device.deviceCategory -contains \"Executive\") and (device.operatingSystemVersion -ge 17.0)"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "pilot_surface_devices" {
  display_name                      = "Pilot Surface Devices"
  description                       = "Surface devices in pilot program with specific naming"
  platform                          = "windows10AndLater"
  rule                              = "(device.model -startsWith \"Surface\") and (device.deviceName -contains \"PILOT\") and (device.deviceOwnership -eq \"Corporate\")"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Managed App Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "unmanaged_ios_apps" {
  display_name                      = "Unmanaged iOS Apps"
  description                       = "Assignment filter for unmanaged iOS applications"
  platform                          = "iOSMobileApplicationManagement"
  rule                              = "(app.deviceManagementType -eq \"Unmanaged\")"
  assignment_filter_management_type = "apps"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "managed_android_apps" {
  display_name                      = "Managed Android Apps"
  description                       = "Assignment filter for managed Android Enterprise applications"
  platform                          = "androidMobileApplicationManagement"
  rule                              = "(app.deviceManagementType -eq \"Android Enterprise\")"
  assignment_filter_management_type = "apps"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "specific_app_version" {
  display_name                      = "Specific App Version"
  description                       = "Assignment filter for apps with specific version"
  platform                          = "iOSMobileApplicationManagement"
  rule                              = "(app.appVersion -eq \"2.1.0\")"
  assignment_filter_management_type = "apps"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "vision_pro_teams_app" {
  display_name                      = "visionOS Teams App"
  description                       = "Assignment filter for Microsoft Teams on Apple Vision Pro"
  platform                          = "iOSMobileApplicationManagement"
  rule                              = "(app.deviceModel -startsWith \"RealityDevice\")"
  assignment_filter_management_type = "apps"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

# Null/Non-Null Filters
resource "microsoft365_graph_beta_device_management_assignment_filter" "devices_with_enrollment_profile" {
  display_name                      = "Devices with Enrollment Profile"
  description                       = "Assignment filter for devices that have an enrollment profile"
  platform                          = "windows10AndLater"
  rule                              = "(device.enrollmentProfileName -ne $null)"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}

resource "microsoft365_graph_beta_device_management_assignment_filter" "devices_without_category" {
  display_name                      = "Devices without Category"
  description                       = "Assignment filter for devices without assigned category"
  platform                          = "windows10AndLater"
  rule                              = "(device.deviceCategory -eq $null)"
  assignment_filter_management_type = "devices"

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}