resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "security_baseline_for_microsoft_edge_version_128" {
  name               = "Windows - security_baseline_for_microsoft_edge_version_128"
  description        = "terraform test for settings catalog templates"
  platforms          = "windows10"
  technologies       = ["mdm"]
  role_scope_tag_ids = ["0"]

  template_reference = {
    template_id = ""
  }

  configuration_policy = {
    settings = [
      {
        id = "0"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~extensions_extensioninstallblocklist"
          setting_instance_template_reference = {
            setting_instance_template_id = "fb2f16e0-2804-45a0-9982-fe709d59fef8"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~extensions_extensioninstallblocklist_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "e9f334db-ca88-4b09-9ccf-d7b9b3142210"
            }
            children = [
              {
                odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
                setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~extensions_extensioninstallblocklist_extensioninstallblocklistdesc"
                setting_instance_template_reference = {
                  setting_instance_template_id = "26c1a943-562d-4286-b5ff-4b491b9515bc"
                }
                simple_setting_collection_value = [
                  {
                    odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                    value      = "*"
                  }
                ]
              }
            ]
          }
        }
      },
      {
        id = "1"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev88.0.705.23~policy~microsoft_edge~httpauthentication_basicauthoverhttpenabled"
          setting_instance_template_reference = {
            setting_instance_template_id = "905d4bdc-0216-4ad9-a5b8-6254fa8c914b"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev88.0.705.23~policy~microsoft_edge~httpauthentication_basicauthoverhttpenabled_0"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "03f73d3f-e150-45b3-9d2e-bac7ab998e54"
            }
            children = []
          }
        }
      },
      {
        id = "2"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~httpauthentication_authschemes"
          setting_instance_template_reference = {
            setting_instance_template_id = "ed7bb376-0861-4ed0-9a65-49c770373d2e"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~httpauthentication_authschemes_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "52012daa-f831-48ad-a327-5c1be8810e16"
            }
            children = [
              {
                odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~httpauthentication_authschemes_authschemes"
                setting_instance_template_reference = {
                  setting_instance_template_id = "7e9d11fe-3d61-4a22-8ed8-6480473faec5"
                }
                simple_setting_value = {
                  odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                  value      = "ntlm,negotiate"
                  setting_value_template_reference = {
                    use_template_default      = false
                    setting_value_template_id = "53d26350-fd8d-4a2e-9ef0-a6cd77217dea"
                  }
                }
              }
            ]
          }
        }
      },
      {
        id = "3"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~nativemessaging_nativemessaginguserlevelhosts"
          setting_instance_template_reference = {
            setting_instance_template_id = "9bcc84e8-0053-493a-a87e-08d84e0967fa"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~nativemessaging_nativemessaginguserlevelhosts_0"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "f312fe01-d3f1-4716-ac3a-1ead051efef0"
            }
            children = []
          }
        }
      },
      {
        id = "4"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev92~policy~microsoft_edge~privatenetworkrequestsettings_insecureprivatenetworkrequestsallowed"
          setting_instance_template_reference = {
            setting_instance_template_id = "45407a86-95c9-4968-af31-4038faabcc1c"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev92~policy~microsoft_edge~privatenetworkrequestsettings_insecureprivatenetworkrequestsallowed_0"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "e7a7bf01-efb1-4f11-8904-a3fb36b589bf"
            }
            children = []
          }
        }
      },
      {
        id = "5"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_smartscreenenabled"
          setting_instance_template_reference = {
            setting_instance_template_id = "b8ed5ae9-d2aa-45ee-9a54-022ad4e0966b"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_smartscreenenabled_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "6de4eabb-5e3d-45e0-a74c-6f9d810182c4"
            }
            children = []
          }
        }
      },
      {
        id = "6"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev80diff~policy~microsoft_edge~smartscreen_smartscreenpuaenabled"
          setting_instance_template_reference = {
            setting_instance_template_id = "2a7c641e-09a9-4746-aea3-a773ff63ac28"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev80diff~policy~microsoft_edge~smartscreen_smartscreenpuaenabled_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "86f52c99-3b8f-4196-b481-8ce9c6c5adfd"
            }
            children = []
          }
        }
      },
      {
        id = "7"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverride"
          setting_instance_template_reference = {
            setting_instance_template_id = "94294557-f4af-49da-b7c8-9ef4a7d9319b"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverride_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "953e6274-422c-4fd4-be5b-9a33ec2fd86b"
            }
            children = []
          }
        }
      },
      {
        id = "8"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverrideforfiles"
          setting_instance_template_reference = {
            setting_instance_template_id = "32bab315-ed28-4b2f-8925-cfdead92ab2d"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverrideforfiles_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "5ed5e40a-f8d0-4bb7-a3b2-40af75098591"
            }
            children = []
          }
        }
      },
      {
        id = "9"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev96~policy~microsoft_edge~typosquattingchecker_typosquattingcheckerenabled"
          setting_instance_template_reference = {
            setting_instance_template_id = "7a2df044-f9ff-4f9e-9bc8-175f4429525f"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev96~policy~microsoft_edge~typosquattingchecker_typosquattingcheckerenabled_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "13542032-04ea-4bcb-9ea5-e59123d31d2e"
            }
            children = []
          }
        }
      },
      {
        id = "10"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev92~policy~microsoft_edge_internetexplorerintegrationreloadiniemodeallowed"
          setting_instance_template_reference = {
            setting_instance_template_id = "7f882cda-1391-45a0-bea9-611d19c2cbb1"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev92~policy~microsoft_edge_internetexplorerintegrationreloadiniemodeallowed_0"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "3614b1ed-85ca-4556-a093-21cacb4d03c0"
            }
            children = []
          }
        }
      },
      {
        id = "11"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslerroroverrideallowed"
          setting_instance_template_reference = {
            setting_instance_template_id = "165783d7-e9e4-4f8d-851c-017162497b81"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslerroroverrideallowed_0"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "b165ab66-5a07-42be-b42e-9607190c4053"
            }
            children = []
          }
        }
      },
      {
        id = "12"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev117~policy~microsoft_edge_internetexplorerintegrationzoneidentifiermhtfileallowed"
          setting_instance_template_reference = {
            setting_instance_template_id = "57a25f73-fd61-40d7-a8a3-f8b976a5a0e3"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev117~policy~microsoft_edge_internetexplorerintegrationzoneidentifiermhtfileallowed_0"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "8478b691-af31-4b41-ba55-7818ceb947bd"
            }
            children = []
          }
        }
      },
      {
        id = "13"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev128~policy~microsoft_edge_dynamiccodesettings"
          setting_instance_template_reference = {
            setting_instance_template_id = "7c825904-acd9-40cf-82cb-5d14eb0c7367"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev128~policy~microsoft_edge_dynamiccodesettings_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "1ff75ff2-8c0f-45e7-9133-a2d6b915e782"
            }
            children = [
              {
                odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev128~policy~microsoft_edge_dynamiccodesettings_dynamiccodesettings"
                setting_instance_template_reference = {
                  setting_instance_template_id = "6edbc641-3108-46b4-8c7a-b8ab340a652b"
                }
                choice_setting_value = {
                  value = "device_vendor_msft_policy_config_microsoft_edgev128~policy~microsoft_edge_dynamiccodesettings_dynamiccodesettings_0"
                  setting_value_template_reference = {
                    use_template_default      = false
                    setting_value_template_id = "90dcb447-496d-4868-8037-bc4bb0b1dd68"
                  }
                  children = []
                }
              }
            ]
          }
        }
      },
      {
        id = "14"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev128.1~policy~microsoft_edge_applicationboundencryptionenabled"
          setting_instance_template_reference = {
            setting_instance_template_id = "c57a423b-54ba-4369-9d38-41ebda91aa8a"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev128.1~policy~microsoft_edge_applicationboundencryptionenabled_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "0758a458-c64b-409e-bd31-57768aba3b5b"
            }
            children = []
          }
        }
      },
      {
        id = "15"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev95~policy~microsoft_edge_browserlegacyextensionpointsblockingenabled"
          setting_instance_template_reference = {
            setting_instance_template_id = "9a678b14-190d-42af-990f-8e7124c9af78"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev95~policy~microsoft_edge_browserlegacyextensionpointsblockingenabled_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "4c1ece3a-5e11-4aeb-a82c-69f227293394"
            }
            children = []
          }
        }
      },
      {
        id = "16"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_siteperprocess"
          setting_instance_template_reference = {
            setting_instance_template_id = "f826b165-0b22-4d05-b1e1-d0470a78bf4a"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_siteperprocess_1"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "a759b657-83f4-43ac-a8a6-2c040d5df842"
            }
            children = []
          }
        }
      },
      {
        id = "17"
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev96~policy~microsoft_edge_internetexplorermodetoolbarbuttonenabled"
          setting_instance_template_reference = {
            setting_instance_template_id = "84e05adb-804f-434d-9849-a59a61bdf9ef"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev96~policy~microsoft_edge_internetexplorermodetoolbarbuttonenabled_0"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "672fda68-bd24-46f5-9ec5-98b7fbb64607"
            }
            children = []
          }
        }
      },
      {
        setting_instance = {
          odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id = "device_vendor_msft_policy_config_microsoft_edgev111~policy~microsoft_edge_sharedarraybufferunrestrictedaccessallowed"
          setting_instance_template_reference = {
            setting_instance_template_id = "83e120ac-df8e-47ae-9a2d-d3c327018405"
          }
          choice_setting_value = {
            value = "device_vendor_msft_policy_config_microsoft_edgev111~policy~microsoft_edge_sharedarraybufferunrestrictedaccessallowed_0"
            setting_value_template_reference = {
              use_template_default      = false
              setting_value_template_id = "91954c3e-3694-4c56-9448-8ff680e5877d"
            }
            children = []
          }
        }
      }
    ]
  }


  # Assignments are defined as a set
  assignments = [
    # Optional: Assignment targeting all devices with include filter
    {
      type        = "allDevicesAssignmentTarget"
      filter_id   = local.common_filter_1
      filter_type = "include"
    },
    # Optional: Assignment targeting all licensed users with exclude filter
    {
      type        = "allLicensedUsersAssignmentTarget"
      filter_id   = local.common_filter_1
      filter_type = "exclude"
    },
    # Optional: Assignment targeting a specific group with include filter
    {
      type        = "groupAssignmentTarget"
      group_id    = "f46f43de-ba95-4fcd-8417-7f0e64b317c2"
      filter_id   = local.common_filter_1
      filter_type = "include"
    },
    # Optional: Assignment targeting a specific group with exclude filter
    {
      type        = "groupAssignmentTarget"
      group_id    = "4f03648f-2a22-4aa2-8131-fb22eea9db3c"
      filter_id   = local.common_filter_2
      filter_type = "include"
    },
    # Optional: Assignment targeting a specific group with exclude filter
    {
      type        = "groupAssignmentTarget"
      group_id    = "3ccdd168-fff4-4714-8960-4cd7e0d8d264"
      filter_id   = local.common_filter_2
      filter_type = "exclude"
    },
    # Optional: Exclusion group assignments
    {
      type     = "exclusionGroupAssignmentTarget"
      group_id = "e8986088-3eb9-4251-89e9-f7b971601023"
    },
    {
      type     = "exclusionGroupAssignmentTarget"
      group_id = "3df4b46e-776a-4c46-9aef-7350661f6529"
    },
  ]

  timeouts = {
    create = "1m"
    read   = "1m"
    update = "1m"
    delete = "1m"
  }
}