resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_microsoft_autoupdate_d_mau_configuration_v1_0" {
  name               = "MacOS - OIB - Microsoft AutoUpdate - D - MAU Configuration - v1.0"
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
                            value = "MAU"
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
                            value = "com.microsoft.autoupdate2"
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
          setting_definition_id = "com.apple.managedclient.preferences_acknowledgeddatacollectionpolicy"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_acknowledgeddatacollectionpolicy_0"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_updatedeadline.daysbeforeforcedquit"
          setting_instance_template_reference = null
          simple_setting_value = {
            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
            setting_value_template_reference = null
            value = 14
          }
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_manifestserver"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_manifestserver_0"
          }
        }
        id = "3"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_disableinsidercheckbox"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_disableinsidercheckbox_true"
          }
        }
        id = "4"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_howtocheck"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_howtocheck_0"
          }
        }
        id = "5"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_enablecheckforupdatesbutton"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_enablecheckforupdatesbutton_true"
          }
        }
        id = "6"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_guardagainstappmodification"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_guardagainstappmodification_true"
          }
        }
        id = "7"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_startdaemononapplaunch"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_startdaemononapplaunch_true"
          }
        }
        id = "8"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_updatecache"
          setting_instance_template_reference = null
          simple_setting_value = {
            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
            setting_value_template_reference = null
            value = "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/"
          }
        }
        id = "9"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_channelname"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_channelname_4"
          }
        }
        id = "10"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_updateroptimization"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_updateroptimization_1"
          }
        }
        id = "11"
      }
    ]
  }
}
