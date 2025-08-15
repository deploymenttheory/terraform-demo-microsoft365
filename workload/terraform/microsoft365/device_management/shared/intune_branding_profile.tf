resource "microsoft365_graph_beta_device_management_intune_branding_profile" "company_portal_branding" {
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
      action    = "remove"
    },
    {
      platform  = "iOS"
      owner_type = "personal"
      action    = "reset"
    }
  ]
  
  # Role scope tags
  role_scope_tag_ids = ["0"]
  
  # Assignments are defined as a set - only groupAssignmentTarget and exclusionGroupAssignmentTarget are valid
  assignments = [
    # Optional: Assignment targeting a specific group with include filter
    {
      type        = "groupAssignmentTarget"
      group_id    = "f46f43de-ba95-4fcd-8417-7f0e64b317c2"
      filter_id   = "2d7956fb-e5b5-4fa3-90b2-5bee9bee7883"
      filter_type = "include"
    },
    # Optional: Assignment targeting a specific group with exclude filter
    {
      type        = "groupAssignmentTarget"
      group_id    = "4f03648f-2a22-4aa2-8131-fb22eea9db3c"
      filter_id   = "80f8c0a5-f3ec-4936-bcbc-420dc0ca3665"
      filter_type = "include"
    },
    # Optional: Assignment targeting a specific group with exclude filter
    {
      type        = "groupAssignmentTarget"
      group_id    = "3ccdd168-fff4-4714-8960-4cd7e0d8d264"
      filter_id   = "80f8c0a5-f3ec-4936-bcbc-420dc0ca3665"
      filter_type = "exclude"
    },
    # Optional: Exclusion group assignments
    {
      type     = "exclusionGroupAssignmentTarget"
      group_id = "e8986088-3eb9-4251-89e9-f7b971601023"
    },
    {
      type     = "exclusionGroupAssignmentTarget"
      group_id = "3df4b46e-776a-4c46-9aef-7350661f6529"
    },
  ]
  # Timeouts
  timeouts ={
    create = "30m"
    read   = "10m"
    update = "30m"
    delete = "10m"
  }
} 