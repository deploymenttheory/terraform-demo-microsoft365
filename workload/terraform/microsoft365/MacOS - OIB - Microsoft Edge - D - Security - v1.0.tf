resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_microsoft_edge_d_security_v1_0" {
  name               = "MacOS - OIB - Microsoft Edge - D - Security - v1.0"
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
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_adssettingforintrusiveadssites"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_adssettingforintrusiveadssites_1"
          }
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_downloadrestrictions"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_downloadrestrictions_1"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_importbrowsersettings"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_importbrowsersettings_false"
          }
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_importhistory"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_importhistory_false"
          }
        }
        id = "3"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_importhomepage"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_importhomepage_false"
          }
        }
        id = "4"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_importpaymentinfo"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_importpaymentinfo_false"
          }
        }
        id = "5"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_importsavedpasswords"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_importsavedpasswords_false"
          }
        }
        id = "6"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_importsearchengine"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_importsearchengine_false"
          }
        }
        id = "7"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_enterprisehardwareplatformapienabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_enterprisehardwareplatformapienabled_false"
          }
        }
        id = "8"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_personalizationreportingenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_personalizationreportingenabled_false"
          }
        }
        id = "9"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_browsernetworktimequeriesenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_browsernetworktimequeriesenabled_true"
          }
        }
        id = "10"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_nativemessaginguserlevelhosts"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_nativemessaginguserlevelhosts_false"
          }
        }
        id = "11"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_autoimportatfirstrun"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_autoimportatfirstrun_4"
          }
        }
        id = "12"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_trackingprevention"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_trackingprevention_2"
          }
        }
        id = "13"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_clearbrowsingdataonexit"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_clearbrowsingdataonexit_false"
          }
        }
        id = "14"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_clearcachedimagesandfilesonexit"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_clearcachedimagesandfilesonexit_false"
          }
        }
        id = "15"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_smartscreenenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_smartscreenenabled_true"
          }
        }
        id = "16"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_smartscreenpuaenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_smartscreenpuaenabled_true"
          }
        }
        id = "17"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_experimentationandconfigurationservicecontrol"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_experimentationandconfigurationservicecontrol_2"
          }
        }
        id = "18"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_dnsinterceptionchecksenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_dnsinterceptionchecksenabled_true"
          }
        }
        id = "19"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_autofilladdressenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_autofilladdressenabled_false"
          }
        }
        id = "20"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_autofillcreditcardenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_autofillcreditcardenabled_false"
          }
        }
        id = "21"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_enablemediarouter"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_enablemediarouter_false"
          }
        }
        id = "22"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_proactiveauthenabled"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_proactiveauthenabled_false"
          }
        }
        id = "23"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_hidefirstrunexperience"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_hidefirstrunexperience_true"
          }
        }
        id = "24"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_sslversionmin"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_sslversionmin_2"
          }
        }
        id = "25"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_preventsmartscreenpromptoverride"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_preventsmartscreenpromptoverride_true"
          }
        }
        id = "26"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_preventsmartscreenpromptoverrideforfiles"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_preventsmartscreenpromptoverrideforfiles_true"
          }
        }
        id = "27"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_authschemes"
          setting_instance_template_reference = null
          simple_setting_value = {
            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
            setting_value_template_reference = null
            value = "ntlm,negotiate"
          }
        }
        id = "28"
      }
    ]
  }
}
