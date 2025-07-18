resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_defender_antivirus_d_antivirus_configuration_v1_0" {
  name               = "MacOS - OIB - Defender Antivirus - D - Antivirus Configuration - v1.0"
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
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_disallowedthreatactions"
          setting_instance_template_reference = null
          simple_setting_collection_value = [
            {
              odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
              setting_value_template_reference = null
              value                            = "allow"
            },
            {
              odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
              setting_value_template_reference = null
              value                            = "restore"
            }
          ]
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_enforcementlevel_antivirusengine"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_enforcementlevel_antivirusengine_2"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_exclusionsmergepolicy"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_exclusionsmergepolicy_1"
          }
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_scanafterdefinitionupdate"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_scanafterdefinitionupdate_true"
          }
        }
        id = "3"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_scanarchives"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_scanarchives_true"
          }
        }
        id = "4"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_threattypesettings"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.managedclient.preferences_threattypesettings_item_value"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.managedclient.preferences_threattypesettings_item_value_1"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.managedclient.preferences_threattypesettings_item_key"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.managedclient.preferences_threattypesettings_item_key_0"
                  }
                }
              ]
            },
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.managedclient.preferences_threattypesettings_item_value"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.managedclient.preferences_threattypesettings_item_value_1"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.managedclient.preferences_threattypesettings_item_key"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.managedclient.preferences_threattypesettings_item_key_1"
                  }
                }
              ]
            }
          ]
        }
        id = "5"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_threattypesettingsmergepolicy"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_threattypesettingsmergepolicy_1"
          }
        }
        id = "6"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_automaticdefinitionupdateenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_automaticdefinitionupdateenabled_true"
          }
        }
        id = "7"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_cloudblocklevel"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_cloudblocklevel_0"
          }
        }
        id = "8"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_diagnosticlevel"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_diagnosticlevel_0"
          }
        }
        id = "9"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_automaticsamplesubmission"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_automaticsamplesubmission_true"
          }
        }
        id = "10"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_enabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_enabled_true"
          }
        }
        id = "11"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_earlypreview"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_earlypreview_false"
          }
        }
        id = "12"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_systemextensions"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_systemextensions_0"
          }
        }
        id = "13"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_enforcementlevel"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_enforcementlevel_2"
          }
        }
        id = "14"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_enforcementlevel_tamperprotection"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_enforcementlevel_tamperprotection_2"
          }
        }
        id = "15"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_exclusions_tamperprotection"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id               = "com.apple.managedclient.preferences_exclusions_item_path_tamperprotection"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value                            = "/Library/Intune/Microsoft Intune Agent.app/Contents/MacOS/IntuneMdmDaemon"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id               = "com.apple.managedclient.preferences_exclusions_item_signingid_tamperprotection"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value                            = "IntuneMdmDaemon"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id               = "com.apple.managedclient.preferences_exclusions_item_teamid_tamperprotection"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value                            = "UBF8T346G9"
                  }
                }
              ]
            }
          ]
        }
        id = "16"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_consumerexperience"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_consumerexperience_1"
          }
        }
        id = "17"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_hidestatusmenuicon"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_hidestatusmenuicon_false"
          }
        }
        id = "18"
      }
    ]
  }
}
