resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_ddm_software_update_settings" {
  name               = "macos ddm software update settings"
  description        = "These settings configure the declarations used by Apple’s declarative device management feature. These settings are separate from older MDM settings and only apply to a device enabled for declarative management. Learn more about declarative management at developer.apple.com"
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
          setting_definition_id = "enforcement_enforcement"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id = "enforcement_detailsurl"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value = "https://path.com"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id = "enforcement_targetbuildversion"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value = "20A242a"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id = "enforcement_targetlocaldatetime"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value = "07/18/2025 23:55:00"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id = "enforcement_targetosversion"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value = "15.5"
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
          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id = "ddm-latestsoftwareupdate_ddm-latestsoftwareupdate"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "ddm-latestsoftwareupdate_enforcelatestsoftwareupdateversion"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = [
                      {
                        odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                        setting_definition_id = "ddm-latestsoftwareupdate_delayindays"
                        setting_instance_template_reference = null
                        simple_setting_value = {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                          setting_value_template_reference = null
                          value = 1
                        }
                      },
                      {
                        odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                        setting_definition_id = "ddm-latestsoftwareupdate_installtime"
                        setting_instance_template_reference = null
                        simple_setting_value = {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                          setting_value_template_reference = null
                          value = "00:00"
                        }
                      }
                    ]
                    value = "ddm-latestsoftwareupdate_enforcelatestsoftwareupdateversion_0"
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
          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id = "softwareupdate_softwareupdate"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "softwareupdate_allowstandarduserosupdates"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "softwareupdate_allowstandarduserosupdates_true"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "softwareupdate_automaticactions"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "softwareupdate_automaticactions_download"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "softwareupdate_automaticactions_download_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "softwareupdate_automaticactions_installosupdates"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "softwareupdate_automaticactions_installosupdates_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "softwareupdate_automaticactions_installsecurityupdate"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "softwareupdate_automaticactions_installsecurityupdate_1"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "softwareupdate_beta"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                          setting_definition_id = "softwareupdate_beta_offerprograms"
                          setting_instance_template_reference = null
                          group_setting_collection_value = [
                            {
                              setting_value_template_reference = null
                              children = [
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "softwareupdate_beta_offerprograms_item_description"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "thing"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "softwareupdate_beta_offerprograms_item_token"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "1234567890-0987654321"
                                  }
                                }
                              ]
                            }
                          ]
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "softwareupdate_beta_programenrollment"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "softwareupdate_beta_programenrollment_0"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                          setting_definition_id = "softwareupdate_beta_requireprogram"
                          setting_instance_template_reference = null
                          group_setting_collection_value = [
                            {
                              setting_value_template_reference = null
                              children = [
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "softwareupdate_beta_requireprogram_description"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "thing"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "softwareupdate_beta_requireprogram_token"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "1234567890-0987654321"
                                  }
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "softwareupdate_deferrals"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "softwareupdate_deferrals_majorperiodindays"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 1
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "softwareupdate_deferrals_minorperiodindays"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 5
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "softwareupdate_deferrals_systemperiodindays"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                            setting_value_template_reference = null
                            value = 30
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "softwareupdate_notifications"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "softwareupdate_notifications_true"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "softwareupdate_rapidsecurityresponse"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "softwareupdate_rapidsecurityresponse_enable"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "softwareupdate_rapidsecurityresponse_enable_true"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "softwareupdate_rapidsecurityresponse_enablerollback"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "softwareupdate_rapidsecurityresponse_enablerollback_true"
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
        id = "2"
      }
    ]
  }
}
