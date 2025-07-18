resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_updates_d_update_configuration_v1_0" {
  name               = "MacOS - OIB - Updates - D - Update Configuration - v1.0"
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
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id               = "com.apple.softwareupdate_com.apple.softwareupdate"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.softwareupdate_automaticcheckenabled"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.softwareupdate_automaticcheckenabled_true"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.softwareupdate_automaticdownload"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.softwareupdate_automaticdownload_true"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.softwareupdate_automaticallyinstallappupdates"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.softwareupdate_automaticallyinstallappupdates_true"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.softwareupdate_automaticallyinstallmacosupdates"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.softwareupdate_automaticallyinstallmacosupdates_true"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.softwareupdate_configdatainstall"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.softwareupdate_configdatainstall_true"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.softwareupdate_criticalupdateinstall"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.softwareupdate_criticalupdateinstall_true"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.softwareupdate_restrict-software-update-require-admin-to-install"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.softwareupdate_restrict-software-update-require-admin-to-install_false"
                  }
                }
              ]
            }
          ]
        }
        id = "0"
      }
    ]
  }
}
