resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_defender_antivirus_d_mde_configuration_v1_0" {
  name               = "MacOS - OIB - Defender Antivirus - D - MDE Configuration - v1.0"
  description        = "terraform"
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
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.servicemanagement_rules_item_ruletype"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.servicemanagement_rules_item_ruletype_3"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.servicemanagement_rules_item_rulevalue"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "com.microsoft.fresno"
                          }
                        }
                      ]
                    },
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.servicemanagement_rules_item_ruletype"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.servicemanagement_rules_item_ruletype_3"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.servicemanagement_rules_item_rulevalue"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "com.microsoft.dlp"
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
          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id = "com.apple.managedclient.preferences_applicationssystem"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.managedclient.preferences_applicationssystem_applications_microsoft defender.app"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
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
          setting_definition_id = "com.apple.tcc.configuration-profile-policy_com.apple.tcc.configuration-profile-policy"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                          setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_accessibility"
                          setting_instance_template_reference = null
                          group_setting_collection_value = [
                            {
                              setting_value_template_reference = null
                              children = [
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_accessibility_item_allowed"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_accessibility_item_allowed_true"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_accessibility_item_authorization"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_accessibility_item_authorization_0"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_accessibility_item_coderequirement"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "identifier \"com.microsoft.dlp.daemon\" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_accessibility_item_identifier"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "com.microsoft.dlp.daemon"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_accessibility_item_identifiertype"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_accessibility_item_identifiertype_0"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_accessibility_item_staticcode"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_accessibility_item_staticcode_false"
                                  }
                                }
                              ]
                            }
                          ]
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                          setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways"
                          setting_instance_template_reference = null
                          group_setting_collection_value = [
                            {
                              setting_value_template_reference = null
                              children = [
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways_item_allowed"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways_item_allowed_true"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways_item_authorization"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways_item_authorization_0"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways_item_coderequirement"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "identifier \"com.microsoft.dlp.daemon\" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways_item_identifier"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "com.microsoft.dlp.daemon"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways_item_identifiertype"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways_item_identifiertype_0"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways_item_staticcode"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_bluetoothalways_item_staticcode_false"
                                  }
                                }
                              ]
                            }
                          ]
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                          setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles"
                          setting_instance_template_reference = null
                          group_setting_collection_value = [
                            {
                              setting_value_template_reference = null
                              children = [
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_allowed"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_allowed_true"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_authorization"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_authorization_0"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_coderequirement"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "identifier \"com.microsoft.wdav\" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifier"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "com.microsoft.wdav"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifiertype"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifiertype_0"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_staticcode"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_staticcode_false"
                                  }
                                }
                              ]
                            },
                            {
                              setting_value_template_reference = null
                              children = [
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_allowed"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_allowed_true"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_authorization"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_authorization_0"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_coderequirement"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "identifier \"com.microsoft.wdav.epsext\" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifier"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "com.microsoft.wdav.epsext"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifiertype"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifiertype_0"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_staticcode"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_staticcode_false"
                                  }
                                }
                              ]
                            },
                            {
                              setting_value_template_reference = null
                              children = [
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_allowed"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_allowed_true"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_authorization"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_authorization_0"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_coderequirement"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "identifier \"com.microsoft.dlp.daemon\" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifier"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value = "com.microsoft.dlp.daemon"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifiertype"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifiertype_0"
                                  }
                                },
                                {
                                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_staticcode"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children = []
                                    value = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_staticcode_false"
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
              ]
            }
          ]
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id = "com.apple.system-extension-policy_com.apple.system-extension-policy"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.system-extension-policy_allowedsystemextensions"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
                          setting_definition_id = "com.apple.system-extension-policy_allowedsystemextensions_generickey"
                          setting_instance_template_reference = null
                          simple_setting_collection_value = [
                            {
                              odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                              setting_value_template_reference = null
                              value = "com.microsoft.wdav.epsext"
                            },
                            {
                              odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                              setting_value_template_reference = null
                              value = "com.microsoft.wdav.netext"
                            }
                          ]
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.system-extension-policy_allowedsystemextensions_generickey_keytobereplaced"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "UBF8T346G9"
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
        id = "3"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id = "com.apple.notificationsettings_com.apple.notificationsettings"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id = "com.apple.notificationsettings_notificationsettings"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.notificationsettings_notificationsettings_item_alerttype"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.notificationsettings_notificationsettings_item_alerttype_1"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.notificationsettings_notificationsettings_item_badgesenabled"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.notificationsettings_notificationsettings_item_badgesenabled_true"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id = "com.apple.notificationsettings_notificationsettings_item_bundleidentifier"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value = "com.microsoft.wdav.tray"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.notificationsettings_notificationsettings_item_criticalalertenabled"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.notificationsettings_notificationsettings_item_criticalalertenabled_false"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.notificationsettings_notificationsettings_item_notificationsenabled"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.notificationsettings_notificationsettings_item_notificationsenabled_true"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.notificationsettings_notificationsettings_item_showinlockscreen"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.notificationsettings_notificationsettings_item_showinlockscreen_false"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.notificationsettings_notificationsettings_item_showinnotificationcenter"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.notificationsettings_notificationsettings_item_showinnotificationcenter_true"
                          }
                        },
                        {
                          odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id = "com.apple.notificationsettings_notificationsettings_item_soundsenabled"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = []
                            value = "com.apple.notificationsettings_notificationsettings_item_soundsenabled_true"
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
        id = "4"
      },
      {
        setting_instance = {
          odata_type = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id = "com.apple.webcontent-filter_com.apple.webcontent-filter"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id = "com.apple.webcontent-filter_filterdataproviderbundleidentifier"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value = "com.microsoft.wdav.netext"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id = "com.apple.webcontent-filter_filterdataproviderdesignatedrequirement"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value = "identifier \"com.microsoft.wdav.netext\" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.webcontent-filter_filtergrade"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.webcontent-filter_filtergrade_1"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.webcontent-filter_filterpackets"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.webcontent-filter_filterpackets_false"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id = "com.apple.webcontent-filter_filtersockets"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children = []
                    value = "com.apple.webcontent-filter_filtersockets_true"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id = "com.apple.webcontent-filter_organization"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value = "JAMF Software"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id = "com.apple.webcontent-filter_pluginbundleid"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value = "com.microsoft.wdav"
                  }
                },
                {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id = "com.apple.webcontent-filter_userdefinedname"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value = "Microsoft Defender Content Filter"
                  }
                }
              ]
            }
          ]
        }
        id = "5"
      }
    ]
  }
}
