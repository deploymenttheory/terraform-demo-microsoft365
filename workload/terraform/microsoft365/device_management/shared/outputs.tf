# Assignment Filter Outputs for Remote State Access
# These outputs allow other workspaces to reference assignment filters

# macOS Assignment Filters
output "assignment_filter_macos_less_than_15_0_id" {
  description = "ID of macOS Less Than 15.0 assignment filter"
  value       = microsoft365_graph_beta_device_management_assignment_filter.macos_less_than_15_0.id
}

output "assignment_filter_macos_apple_silicon_id" {
  description = "ID of macOS Apple Silicon assignment filter"
  value       = microsoft365_graph_beta_device_management_assignment_filter.macos_apple_silicon.id
}

# Windows Assignment Filters
output "assignment_filter_windows_arm64_devices_id" {
  description = "ID of Windows ARM64 Devices assignment filter"
  value       = microsoft365_graph_beta_device_management_assignment_filter.windows_arm64_devices.id
}

# Branding Profile Output
output "intune_branding_profile_id" {
  description = "ID of the Intune branding profile"
  value       = microsoft365_graph_beta_device_management_intune_branding_profile.company_portal_branding.id
}

# Complete assignment filter map for easy reference
output "assignment_filters" {
  description = "Map of all assignment filter names to their IDs"
  value = {
    # Platform and Version Filters
    macos_less_than_15_0           = microsoft365_graph_beta_device_management_assignment_filter.macos_less_than_15_0.id
    macos_apple_silicon           = microsoft365_graph_beta_device_management_assignment_filter.macos_apple_silicon.id
    windows_arm64_devices         = microsoft365_graph_beta_device_management_assignment_filter.windows_arm64_devices.id
    windows_x64_x86_devices       = microsoft365_graph_beta_device_management_assignment_filter.windows_x64_x86_devices.id
    windows_11_22h2_or_later      = microsoft365_graph_beta_device_management_assignment_filter.windows_11_22h2_or_later.id
    ios_16_or_later               = microsoft365_graph_beta_device_management_assignment_filter.ios_16_or_later.id
    android_12_to_13              = microsoft365_graph_beta_device_management_assignment_filter.android_12_to_13.id
    
    # Device Categories
    engineering_devices           = microsoft365_graph_beta_device_management_assignment_filter.engineering_devices.id
    corporate_devices            = microsoft365_graph_beta_device_management_assignment_filter.corporate_devices.id
    personal_devices             = microsoft365_graph_beta_device_management_assignment_filter.personal_devices.id
    
    # Device Names and Models
    devices_containing_test      = microsoft365_graph_beta_device_management_assignment_filter.devices_containing_test.id
    devices_starting_with_laptop = microsoft365_graph_beta_device_management_assignment_filter.devices_starting_with_laptop.id
    specific_device_names        = microsoft365_graph_beta_device_management_assignment_filter.specific_device_names.id
    surface_devices              = microsoft365_graph_beta_device_management_assignment_filter.surface_devices.id
    macbook_devices              = microsoft365_graph_beta_device_management_assignment_filter.macbook_devices.id
    iphone_devices               = microsoft365_graph_beta_device_management_assignment_filter.iphone_devices.id
    specific_surface_models      = microsoft365_graph_beta_device_management_assignment_filter.specific_surface_models.id
    
    # Enrollment and Management
    azure_ad_joined_devices      = microsoft365_graph_beta_device_management_assignment_filter.azure_ad_joined_devices.id
    hybrid_azure_ad_joined       = microsoft365_graph_beta_device_management_assignment_filter.hybrid_azure_ad_joined.id
    autopilot_devices            = microsoft365_graph_beta_device_management_assignment_filter.autopilot_devices.id
    dep_enrolled_ios             = microsoft365_graph_beta_device_management_assignment_filter.dep_enrolled_ios.id
    
    # Security and Compliance
    non_rooted_android           = microsoft365_graph_beta_device_management_assignment_filter.non_rooted_android.id
    non_jailbroken_ios           = microsoft365_graph_beta_device_management_assignment_filter.non_jailbroken_ios.id
    
    # Manufacturer Filters
    microsoft_devices            = microsoft365_graph_beta_device_management_assignment_filter.microsoft_devices.id
    apple_devices                = microsoft365_graph_beta_device_management_assignment_filter.apple_devices.id
    samsung_android              = microsoft365_graph_beta_device_management_assignment_filter.samsung_android.id
    
    # SKU and Edition Filters
    windows_enterprise_sku       = microsoft365_graph_beta_device_management_assignment_filter.windows_enterprise_sku.id
    windows_pro_education        = microsoft365_graph_beta_device_management_assignment_filter.windows_pro_education.id
    corporate_windows_modern     = microsoft365_graph_beta_device_management_assignment_filter.corporate_windows_modern.id
    
    # Special Purpose Filters
    executive_ios_devices        = microsoft365_graph_beta_device_management_assignment_filter.executive_ios_devices.id
    pilot_surface_devices        = microsoft365_graph_beta_device_management_assignment_filter.pilot_surface_devices.id
    
    # App Management Filters
    unmanaged_ios_apps           = microsoft365_graph_beta_device_management_assignment_filter.unmanaged_ios_apps.id
    managed_android_apps         = microsoft365_graph_beta_device_management_assignment_filter.managed_android_apps.id
    specific_app_version         = microsoft365_graph_beta_device_management_assignment_filter.specific_app_version.id
    vision_pro_teams_app         = microsoft365_graph_beta_device_management_assignment_filter.vision_pro_teams_app.id
    
    # Enrollment Profile Filters
    devices_with_enrollment_profile = microsoft365_graph_beta_device_management_assignment_filter.devices_with_enrollment_profile.id
    devices_without_category        = microsoft365_graph_beta_device_management_assignment_filter.devices_without_category.id
  }
}