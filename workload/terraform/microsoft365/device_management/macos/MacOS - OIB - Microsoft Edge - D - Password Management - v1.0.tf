resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_microsoft_edge_d_password_management_v1_0" {
  name               = "MacOS - OIB - Microsoft Edge - D - Password Management - v1.0"
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
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_passwordmonitorallowed"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_passwordmonitorallowed_true"
          }
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_passwordprotectionwarningtrigger"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_passwordprotectionwarningtrigger_1"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_passwordmanagerenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_passwordmanagerenabled_true"
          }
        }
        id = "2"
      }
    ]
  }
}
