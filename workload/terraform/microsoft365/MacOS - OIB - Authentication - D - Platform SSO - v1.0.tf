resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_authentication_d_platform_sso_v1_0" {
  name               = "MacOS - OIB - Authentication - D - Platform SSO - v1.0"
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
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
          setting_definition_id               = "com.apple.extensiblesso_com.apple.extensiblesso"
          setting_instance_template_reference = null
          group_setting_collection_value = [
            {
              setting_value_template_reference = null
              children = [
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.extensiblesso_authenticationmethod"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.extensiblesso_authenticationmethod_1"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id               = "com.apple.extensiblesso_extensiondata"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_extensiondata_generickey_keytobereplaced"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value                            = "AppPrefixAllowList"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_ignored_$typepicker"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = [
                              {
                                odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                setting_definition_id               = "com.apple.extensiblesso_extensiondata_generickey_string"
                                setting_instance_template_reference = null
                                simple_setting_value = {
                                  odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                  setting_value_template_reference = null
                                  value                            = "com.microsoft.,com.apple."
                                }
                              }
                            ]
                            value = "com.apple.extensiblesso_ignored_0"
                          }
                        }
                      ]
                    },
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_extensiondata_generickey_keytobereplaced"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value                            = "browser_sso_interaction_enabled"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_ignored_$typepicker"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = [
                              {
                                odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                setting_definition_id               = "com.apple.extensiblesso_extensiondata_generickey_integer"
                                setting_instance_template_reference = null
                                simple_setting_value = {
                                  odata_type                       = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                                  setting_value_template_reference = null
                                  value                            = 1
                                }
                              }
                            ]
                            value = "com.apple.extensiblesso_ignored_1"
                          }
                        }
                      ]
                    },
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_extensiondata_generickey_keytobereplaced"
                          setting_instance_template_reference = null
                          simple_setting_value = {
                            odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                            setting_value_template_reference = null
                            value                            = "disable_explicit_app_prompt"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_ignored_$typepicker"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children = [
                              {
                                odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                setting_definition_id               = "com.apple.extensiblesso_extensiondata_generickey_integer"
                                setting_instance_template_reference = null
                                simple_setting_value = {
                                  odata_type                       = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
                                  setting_value_template_reference = null
                                  value                            = 1
                                }
                              }
                            ]
                            value = "com.apple.extensiblesso_ignored_1"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id               = "com.apple.extensiblesso_extensionidentifier"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value                            = "com.microsoft.CompanyPortalMac.ssoextension"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                  setting_definition_id               = "com.apple.extensiblesso_platformsso"
                  setting_instance_template_reference = null
                  group_setting_collection_value = [
                    {
                      setting_value_template_reference = null
                      children = [
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_platformsso_authenticationmethod"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children                         = []
                            value                            = "com.apple.extensiblesso_platformsso_authenticationmethod_1"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_platformsso_enableauthorization"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children                         = []
                            value                            = "com.apple.extensiblesso_platformsso_enableauthorization_true"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_platformsso_enablecreateuseratlogin"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children                         = []
                            value                            = "com.apple.extensiblesso_platformsso_enablecreateuseratlogin_true"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_platformsso_newuserauthorizationmode"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children                         = []
                            value                            = "com.apple.extensiblesso_platformsso_newuserauthorizationmode_0"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
                          setting_definition_id               = "com.apple.extensiblesso_platformsso_tokentousermapping"
                          setting_instance_template_reference = null
                          group_setting_collection_value = [
                            {
                              setting_value_template_reference = null
                              children = [
                                {
                                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id               = "com.apple.extensiblesso_platformsso_tokentousermapping_accountname"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value                            = "preferred_username"
                                  }
                                },
                                {
                                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                                  setting_definition_id               = "com.apple.extensiblesso_platformsso_tokentousermapping_fullname"
                                  setting_instance_template_reference = null
                                  simple_setting_value = {
                                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                                    setting_value_template_reference = null
                                    value                            = "name"
                                  }
                                }
                              ]
                            }
                          ]
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_platformsso_useshareddevicekeys"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children                         = []
                            value                            = "com.apple.extensiblesso_platformsso_useshareddevicekeys_true"
                          }
                        },
                        {
                          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                          setting_definition_id               = "com.apple.extensiblesso_platformsso_userauthorizationmode"
                          setting_instance_template_reference = null
                          choice_setting_value = {
                            setting_value_template_reference = null
                            children                         = []
                            value                            = "com.apple.extensiblesso_platformsso_userauthorizationmode_0"
                          }
                        }
                      ]
                    }
                  ]
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id               = "com.apple.extensiblesso_registrationtoken"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value                            = "{{DEVICEREGISTRATION}}"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.extensiblesso_screenlockedbehavior"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.extensiblesso_screenlockedbehavior_0"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                  setting_definition_id               = "com.apple.extensiblesso_teamidentifier"
                  setting_instance_template_reference = null
                  simple_setting_value = {
                    odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    setting_value_template_reference = null
                    value                            = "UBF8T346G9"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                  setting_definition_id               = "com.apple.extensiblesso_type"
                  setting_instance_template_reference = null
                  choice_setting_value = {
                    setting_value_template_reference = null
                    children                         = []
                    value                            = "com.apple.extensiblesso_type_1"
                  }
                },
                {
                  odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
                  setting_definition_id               = "com.apple.extensiblesso_urls"
                  setting_instance_template_reference = null
                  simple_setting_collection_value = [
                    {
                      odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value                            = "https://login.microsoftonline.com"
                    },
                    {
                      odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value                            = "https://login.microsoft.com"
                    },
                    {
                      odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                      setting_value_template_reference = null
                      value                            = "https://sts.windows.net"
                    }
                  ]
                }
              ]
            }
          ]
        }
        id = "0"
      }
    ]
  }
}
