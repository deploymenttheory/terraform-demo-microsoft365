resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_microsoft_onedrive_d_service_and_access_v1_0" {
  name               = "MacOS - OIB - Microsoft OneDrive - D - Service and Access - v1.0"
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
          setting_definition_id               = "com.apple.servicemanagement_com.apple.servicemanagement"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id               = "com.apple.servicemanagement_rules"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id               = "com.apple.servicemanagement_rules_item_comment"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value                            = "OneDrive (Standalone)"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.servicemanagement_rules_item_ruletype"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children                         = []
                            value                            = "com.apple.servicemanagement_rules_item_ruletype_3"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id               = "com.apple.servicemanagement_rules_item_rulevalue"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value                            = "com.microsoft.OneDrive"
                          }
                        }
                      ]
                    },
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id               = "com.apple.servicemanagement_rules_item_comment"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value                            = "OneDrive Launcher"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.servicemanagement_rules_item_ruletype"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children                         = []
                            value                            = "com.apple.servicemanagement_rules_item_ruletype_0"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id               = "com.apple.servicemanagement_rules_item_rulevalue"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value                            = "com.microsoft.OneDriveLauncher"
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
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id               = "com.apple.tcc.configuration-profile-policy_com.apple.tcc.configuration-profile-policy"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id               = "com.apple.tcc.configuration-profile-policy_services"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                          setting_definition_id               = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles"
                          setting_instance_template_reference = null
                          group_setting_collection_value = [
                            {
                              setting_value_template_reference = null
                              children = [
                                {
                                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id               = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_allowed"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children                         = []
                                    value                            = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_allowed_true"
                                  }
                                },
                                {
                                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id               = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_authorization"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children                         = []
                                    value                            = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_authorization_0"
                                  }
                                },
                                {
                                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id               = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_coderequirement"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value                            = "identifier \"com.microsoft.OneDrive\" and anchor apple generic and certificate 1[field.1.2.840.113635.100.6.2.6] /* exists */ and certificate leaf[field.1.2.840.113635.100.6.1.13] /* exists */ and certificate leaf[subject.OU] = UBF8T346G9"
                                  }
                                },
                                {
                                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id               = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifier"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value                            = "com.microsoft.OneDrive"
                                  }
                                },
                                {
                                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id               = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifiertype"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children                         = []
                                    value                            = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_identifiertype_0"
                                  }
                                },
                                {
                                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                                  setting_definition_id               = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_staticcode"
                                  setting_instance_template_reference = null
                                  choice_setting_value = {
                                    setting_value_template_reference = null
                                    children                         = []
                                    value                            = "com.apple.tcc.configuration-profile-policy_services_systempolicyallfiles_item_staticcode_false"
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
        id = "1"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id               = "com.apple.system-extension-policy_com.apple.system-extension-policy"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id               = "com.apple.system-extension-policy_allowedsystemextensions"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
                          setting_definition_id               = "com.apple.system-extension-policy_allowedsystemextensions_generickey"
                          setting_instance_template_reference = null
                          simple_setting_collection_value = [
                            {
                              odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                              setting_value_template_reference = null
                              value                            = "com.microsoft.OneDrive.FinderSync"
                            }
                          ]
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id               = "com.apple.system-extension-policy_allowedsystemextensions_generickey_keytobereplaced"
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
              ]
            }
          ]
        }
        id = "2"
      }
    ]
  }
}
