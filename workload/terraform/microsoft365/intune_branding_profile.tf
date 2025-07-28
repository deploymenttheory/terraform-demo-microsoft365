resource "microsoft365_graph_beta_device_management_intune_branding_profile" "example" {
  profile_name                               = "Corporate Branding"
  display_name                               = "Company Portal Branding"
  contact_it_name                            = "IT Support Team"
  contact_it_phone_number                    = "+1 (555) 123-4567"
  contact_it_email_address                   = "support@example.com"
  contact_it_notes                           = "Available Monday to Friday, 9am to 5pm"
  online_support_site_url                    = "https://support.example.com"
  online_support_site_name                   = "Company IT Support Portal"
  privacy_url                                = "https://www.example.com/privacy"
  custom_privacy_message                     = "Your privacy is important to us. Please read our privacy policy."
  custom_can_see_privacy_message             = "You can view our privacy policy at any time."
  custom_cant_see_privacy_message            = "Please contact IT support for privacy information."
  show_logo                                  = true
  show_display_name_next_to_logo             = true
  
  # Branding colors
  theme_color = {
    r = 0    # Red
    g = 120  # Green
    b = 212  # Blue
  }
  
  # Branding images
  theme_color_logo = {
    image_url_source = "https://www.example.com/logo-dark.png"
  }
  
  light_background_logo = {
    image_url_source = "https://www.example.com/logo-light.png"
  }
  
  landing_page_customized_image = {
    image_url_source = "https://www.example.com/landing-image.png"
  }
  
  # Company portal settings
  is_remove_device_disabled                  = false
  is_factory_reset_disabled                  = false
  show_azure_ad_enterprise_apps              = true
  show_office_web_apps                       = true
  send_device_ownership_change_push_notification = true
  enrollment_availability                    = "availableWithPrompts"
  disable_client_telemetry                   = false
  is_default_profile                         = false
  
  # Company portal blocked actions
  company_portal_blocked_actions = [
    {
      platform  = "android"
      owner_type = "company"
      action    = "removeDeviceAfterRetire"
    },
    {
      platform  = "iOS"
      owner_type = "personal"
      action    = "factoryReset"
    }
  ]
  
  # Role scope tags
  role_scope_tag_ids = ["0"]
  
  # Assignments
  assignments = {
    include_groups = [
      {
        group_id = "12345678-1234-1234-1234-123456789012" # Replace with actual group ID
      }
    ]
    exclude_group_ids = ["87654321-4321-4321-4321-210987654321"] # Replace with actual group ID
  }
  
  # Timeouts
  timeouts ={
    create = "30m"
    read   = "10m"
    update = "30m"
    delete = "10m"
  }
} 