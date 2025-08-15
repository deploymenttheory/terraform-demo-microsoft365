resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_microsoft_edge_u_profiles_sign_in_and_sync_v1_0" {
  name               = "MacOS - OIB - Microsoft Edge - U - Profiles, Sign-In and Sync - v1.0"
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
          setting_definition_id               = "com.apple.managedclient.preferences_browsersignin"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_browsersignin_2"
          }
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_browseraddprofileenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_browseraddprofileenabled_false"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_forceephemeralprofiles"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_forceephemeralprofiles_false"
          }
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_forcesync"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_forcesync_true"
          }
        }
        id = "3"
      }
    ]
  }
}
