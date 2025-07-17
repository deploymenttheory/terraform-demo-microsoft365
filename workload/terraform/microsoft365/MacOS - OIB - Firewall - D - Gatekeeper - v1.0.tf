resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_firewall_d_gatekeeper_v1_0" {
  name               = "MacOS - OIB - Firewall - D - Gatekeeper - v1.0"
  description        = ""
  platforms          = "macOS"
  technologies       = ["mdm", "appleRemoteManagement"]
  role_scope_tag_ids = ["0"]

  template_reference = {
    template_id = ""
  }

  configuration_policy = {
    settings = [
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id = "com.apple.security.firewall_com.apple.security.firewall"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.security.firewall_blockallincoming"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.security.firewall_blockallincoming_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.security.firewall_enablefirewall"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.security.firewall_enablefirewall_true"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.security.firewall_enablelogging"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.security.firewall_enablelogging_true"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.security.firewall_enablestealthmode"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.security.firewall_enablestealthmode_true"
                  }
                }
              ]
            }
          ]
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id = "com.apple.systempolicy.control_com.apple.systempolicy.control"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.systempolicy.control_allowidentifieddevelopers"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.systempolicy.control_allowidentifieddevelopers_true"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.systempolicy.control_enableassessment"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.systempolicy.control_enableassessment_true"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.systempolicy.control_enablexprotectmalwareupload"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.systempolicy.control_enablexprotectmalwareupload_false"
                  }
                }
              ]
            }
          ]
        }
        id = "1"
      }
    ]
  }
}
