resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_microsoft_onedrive_u_known_folder_move_v1_0" {
  name               = "MacOS - OIB - Microsoft OneDrive - U - Known Folder Move - v1.0"
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
          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_kfmsilentoptin"
          setting_instance_template_reference = null
          simple_setting_value = {
            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
            setting_value_template_reference = null
            value = "%OrganizationId%"
          }
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_blockexternalsync"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_blockexternalsync_true"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_disableautoconfig"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_disableautoconfig_0"
          }
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_disablepersonalsync"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_disablepersonalsync_true"
          }
        }
        id = "3"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_disabletutorial"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_disabletutorial_true"
          }
        }
        id = "4"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_kfmsilentoptinwithnotification"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_kfmsilentoptinwithnotification_false"
          }
        }
        id = "5"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_filesondemandenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_filesondemandenabled_true"
          }
        }
        id = "6"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_enableallocsiclients"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_enableallocsiclients_true"
          }
        }
        id = "7"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_kfmblockoptout"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_kfmblockoptout_true"
          }
        }
        id = "8"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_hidedockicon"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_hidedockicon_true"
          }
        }
        id = "9"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
          setting_definition_id = "com.apple.managedclient.preferences_enableodignore"
          setting_instance_template_reference = null
          simple_setting_collection_value = [
            {
              odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
              setting_value_template_reference = null
              value = "*.lnk"
            },
            {
              odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
              setting_value_template_reference = null
              value = "*.pst"
            },
            {
              odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
              setting_value_template_reference = null
              value = "*.pkg"
            },
            {
              odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
              setting_value_template_reference = null
              value = "*.dmg"
            }
          ]
        }
        id = "10"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_kfmsilentoptindesktop"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_kfmsilentoptindesktop_true"
          }
        }
        id = "11"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_kfmsilentoptindocuments"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_kfmsilentoptindocuments_true"
          }
        }
        id = "12"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_openatlogin"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_openatlogin_true"
          }
        }
        id = "13"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_kfmoptinwithwizard"
          setting_instance_template_reference = null
          simple_setting_value = {
            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
            setting_value_template_reference = null
            value = "%OrganizationId%"
          }
        }
        id = "14"
      }
    ]
  }
}
