resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_microsoft_office_d_office_configuration_v1_0" {
  name               = "MacOS - OIB - Microsoft Office - D - Office Configuration - v1.0"
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
          setting_definition_id = "com.apple.servicemanagement_com.apple.servicemanagement"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.servicemanagement_rules"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.servicemanagement_rules_item_comment"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "Office Licensing Helper"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.servicemanagement_rules_item_ruletype"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.servicemanagement_rules_item_ruletype_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.servicemanagement_rules_item_rulevalue"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "com.microsoft.office.licensingV2.helper"
                          }
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_officeautosignin"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_officeautosignin_true"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_officeactivationemailaddress"
          setting_instance_template_reference = null
          simple_setting_value = {
            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
            setting_value_template_reference = null
            value = "{{userprincipalname}}"
          }
        }
        id = "2"
      }
    ]
  }
}
