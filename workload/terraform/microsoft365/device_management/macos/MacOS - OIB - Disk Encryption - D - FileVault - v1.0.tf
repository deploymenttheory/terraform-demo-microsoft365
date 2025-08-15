resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_disk_encryption_d_filevault_v1_0" {
  name               = "MacOS - OIB - Disk Encryption - D - FileVault - v1.0"
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
          setting_definition_id               = "com.apple.mcx.filevault2_com.apple.mcx.filevault2"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.mcx.filevault2_enable"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.mcx.filevault2_enable_0"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.mcx.filevault2_forceenableinsetupassistant"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.mcx.filevault2_forceenableinsetupassistant_true"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.mcx.filevault2_recoverykeyrotationinmonths"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.mcx.filevault2_recoverykeyrotationinmonths_6"
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
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id               = "com.apple.mcx_com.apple.mcx-fdefilevaultoptions"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.mcx_dontallowfdedisable"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.mcx_dontallowfdedisable_true"
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
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id               = "com.apple.security.fderecoverykeyescrow_com.apple.security.fderecoverykeyescrow"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id               = "com.apple.security.fderecoverykeyescrow_location"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value                            = "You can retrieve the personal recovery key for your macOS device from the Microsoft Intune app, Company Portal website, or Company Portal apps for Android and iOS/iPadOS. Support cannot access recovery keys that belong to personal devices."
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
