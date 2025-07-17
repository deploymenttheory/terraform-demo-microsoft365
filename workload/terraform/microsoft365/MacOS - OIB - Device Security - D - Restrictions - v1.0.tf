resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_device_security_d_restrictions_v1_0" {
  name               = "MacOS - OIB - Device Security - D - Restrictions - v1.0"
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
          setting_definition_id = "com.apple.systempreferences_com.apple.systempreferences"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
                  setting_definition_id = "com.apple.systempreferences_disabledpreferencepanes"
                  setting_instance_template_reference = null
                  simple_setting_collection_value = [
                    {
                      odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value = "com.apple.AirDrop-Handoff-Settings.extension"
                    },
                    {
                      odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value = "com.apple.Family-Settings.extension"
                    },
                    {
                      odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value = "com.apple.Game-Center-Settings.extension"
                    },
                    {
                      odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value = "com.apple.Siri-Settings.extension"
                    },
                    {
                      odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value = "com.apple.Startup-Disk-Settings.extension"
                    },
                    {
                      odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value = "com.apple.Time-Machine-Settings.extension"
                    },
                    {
                      odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value = "com.apple.WalletSettingsExtension"
                    },
                    {
                      odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value = "com.apple.systempreferences.AppleIDSettings"
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
          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id = "com.apple.applicationaccess_com.apple.applicationaccess"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowaccountmodification"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowaccountmodification_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowactivitycontinuation"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowactivitycontinuation_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowaddinggamecenterfriends"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowaddinggamecenterfriends_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowairplayincomingrequests"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowairplayincomingrequests_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowairdrop"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowairdrop_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowapplepersonalizedadvertising"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowapplepersonalizedadvertising_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowassistant"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowassistant_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowautounlock"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowautounlock_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowbluetoothsharingmodification"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowbluetoothsharingmodification_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowcloudaddressbook"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowcloudaddressbook_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowcloudbookmarks"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowcloudbookmarks_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowcloudcalendar"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowcloudcalendar_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowclouddesktopanddocuments"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowclouddesktopanddocuments_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowclouddocumentsync"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowclouddocumentsync_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowcloudfreeform"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowcloudfreeform_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowcloudkeychainsync"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowcloudkeychainsync_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowcloudmail"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowcloudmail_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowcloudnotes"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowcloudnotes_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowcloudphotolibrary"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowcloudphotolibrary_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowcloudprivaterelay"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowcloudprivaterelay_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowcloudreminders"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowcloudreminders_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowdevicenamemodification"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowdevicenamemodification_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowerasecontentandsettings"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowerasecontentandsettings_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowfilesharingmodification"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowfilesharingmodification_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowfindmydevice"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowfindmydevice_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowfindmyfriends"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowfindmyfriends_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowgamecenter"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowgamecenter_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowinternetsharingmodification"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowinternetsharingmodification_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowitunesfilesharing"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowitunesfilesharing_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowlocalusercreation"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowlocalusercreation_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowmultiplayergaming"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowmultiplayergaming_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowpasswordproximityrequests"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowpasswordproximityrequests_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowpasswordsharing"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowpasswordsharing_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowprintersharingmodification"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowprintersharingmodification_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_allowstartupdiskmodification"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_allowstartupdiskmodification_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.applicationaccess_safariallowautofill"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.applicationaccess_safariallowautofill_false"
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
