resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_device_security_d_accounts_and_login_v1_0" {
  name               = "MacOS - OIB - Device Security - D - Accounts and Login - v1.0"
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
          setting_definition_id = "com.apple.mcx_com.apple.mcx-accounts"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.mcx_disableguestaccount"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.mcx_disableguestaccount_true"
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
          setting_definition_id = "com.apple.loginwindow_com.apple.loginwindow"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id = "com.apple.loginwindow_adminhostinfo"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value = "HostName"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.loginwindow_disableconsoleaccess"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.loginwindow_disableconsoleaccess_true"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.loginwindow_hideadminusers"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.loginwindow_hideadminusers_false"
                  }
                }
              ]
            }
          ]
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id = "loginwindow_loginwindow"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "loginwindow_disableloginitemssuppression"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "loginwindow_disableloginitemssuppression_true"
                  }
                }
              ]
            }
          ]
        }
        id = "2"
      }
    ]
  }
}
