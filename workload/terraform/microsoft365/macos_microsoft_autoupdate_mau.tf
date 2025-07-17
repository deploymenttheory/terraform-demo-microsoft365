resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_microsoft_autoupdate_mau" {
  name               = "Microsoft AutoUpdate (MAU)"
  description        = "Configure the Microsoft AutoUpdate preferences to control the update process for Microsoft applications on devices."
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
          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_company portal.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_company portal.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_company portal.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_company portal.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "IMCP01"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_company portal.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_company portal.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_company portal.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_library_application support_microsoft_mau2.0_microsoft autoupdate.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_library_application support_microsoft_mau2.0_microsoft autoupdate.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_library_application support_microsoft_mau2.0_microsoft autoupdate.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_library_application support_microsoft_mau2.0_microsoft autoupdate.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "MSau04"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_library_application support_microsoft_mau2.0_microsoft autoupdate.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_library_application support_microsoft_mau2.0_microsoft autoupdate.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_library_application support_microsoft_mau2.0_microsoft autoupdate.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft defender.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft defender.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft defender.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft defender.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "WDAV00"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft defender.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft defender.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft defender.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft excel.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft excel.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft excel.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft excel.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "XCEL2019"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft excel.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft excel.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft excel.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft onenote.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft onenote.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft onenote.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft onenote.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "ONMC2019"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft onenote.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft onenote.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft onenote.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft outlook.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft outlook.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft outlook.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft outlook.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "OPIM2019"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft outlook.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft outlook.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft outlook.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft powerpoint.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft powerpoint.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft powerpoint.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft powerpoint.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "PPT32019"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft powerpoint.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft powerpoint.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft powerpoint.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft teams (work or school).app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft teams (work or school).app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "TEAMS21"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft teams (work or school).app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft teams (work or school).app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft teams (work or school).app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft teams classic.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft teams classic.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "TEAMS10"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft teams classic.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft teams classic.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft teams classic.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft word.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft word.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft word.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft word.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "MSWD2019"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft word.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft word.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft word.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_onedrive.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_onedrive.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_onedrive.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_onedrive.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "ONDR18"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_onedrive.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_onedrive.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_onedrive.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_skype for business.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_skype for business.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_skype for business.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_skype for business.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "MSFB16"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_skype for business.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_skype for business.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_skype for business.app_manifestserver_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_windows app.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_windows app.app_application id"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "MSRD10"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_windows app.app_channelname"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_windows app.app_channelname_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_windows app.app_lcid"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1033
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_windows app.app_manifestserver"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.managedclient.preferences_applicationssystem_applications_windows app.app_manifestserver_0"
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
            value = 0
          }
        }
        id = "2"
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
        id = "3"
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
        id = "4"
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
        id = "5"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_extendedlogging"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_extendedlogging_true"
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
            value = "com.apple.managedclient.preferences_guardagainstappmodification_false"
          }
        }
        id = "7"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_updatedeadline.finalcountdown"
          setting_instance_template_reference = null
          simple_setting_value = {
            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
            setting_value_template_reference = null
            value = 60
          }
        }
        id = "8"
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
        id = "9"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_updatecache"
          setting_instance_template_reference = null
          simple_setting_value = {
            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
            setting_value_template_reference = null
            value = "//hostname/path"
          }
        }
        id = "10"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_channelname"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_channelname_0"
          }
        }
        id = "11"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_updatecheckfrequency"
          setting_instance_template_reference = null
          simple_setting_value = {
            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
            setting_value_template_reference = null
            value = 240
          }
        }
        id = "12"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "com.apple.managedclient.preferences_updateroptimization"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = []
            value = "com.apple.managedclient.preferences_updateroptimization_0"
          }
        }
        id = "13"
      }
    ]
  }
}
