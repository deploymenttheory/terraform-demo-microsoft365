resource "microsoft365_graph_beta_device_management_settings_catalog_template" "security_baseline_for_windows_365" {
  name                           = "Windows - security_baseline_for_windows_1365"
  description                    = "terraform test for settings catalog templates"
  settings_catalog_template_type = "security_baseline_for_windows_365"
  role_scope_tag_ids             = ["0"]

  settings = jsonencode({
"settings": [
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_devicelock_preventenablinglockscreencamera",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "6d3ff27f-d01a-4573-89b8-9868f3ec2d29"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_devicelock_preventenablinglockscreencamera_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "55fdc432-25a4-4c9e-b81a-d79d64449438",
            "useTemplateDefault": false
          }
        }
      },
      "id": "0"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_devicelock_preventlockscreenslideshow",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "857f467d-0c7b-4e89-928c-be861c3f09d9"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_devicelock_preventlockscreenslideshow_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "fac4ab7d-83a7-48b7-a4bc-d200d2f2e9f7",
            "useTemplateDefault": false
          }
        }
      },
      "id": "1"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_mssecurityguide_applyuacrestrictionstolocalaccountsonnetworklogon",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0e3cc3fc-d768-4e72-9ff2-b582abbb58cb"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_mssecurityguide_applyuacrestrictionstolocalaccountsonnetworklogon_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "28549ee7-f25f-4f50-821d-4ad614e4205e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "2"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "04195c70-1998-46b4-a727-c1dda0158e3f"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver_pol_secguide_smb1clientdriver",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "f5c62cd8-9b27-4a80-b96b-f3f92dfbdd24"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver_pol_secguide_smb1clientdriver_4",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "95f5956f-1275-47ed-941b-7965f7f99fcd",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "bab0271a-a57e-49d9-9a1b-a73e6da70abc",
            "useTemplateDefault": false
          }
        }
      },
      "id": "3"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1server",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "1819cc56-a8b4-4cca-822d-f0565cb1d8f5"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1server_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "799b8771-78f4-4595-b512-8f189228ec2e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "4"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_mssecurityguide_enablestructuredexceptionhandlingoverwriteprotection",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "66706ba7-940b-4924-ae86-256540ce71e8"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_mssecurityguide_enablestructuredexceptionhandlingoverwriteprotection_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4fb0ecdd-8af7-403c-aff1-e68f9d8dc3a7",
            "useTemplateDefault": false
          }
        }
      },
      "id": "5"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_mssecurityguide_wdigestauthentication",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9622c22c-7034-4665-adc5-c3a717077561"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_mssecurityguide_wdigestauthentication_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "9d873d73-81df-430c-b780-45743859a5cf",
            "useTemplateDefault": false
          }
        }
      },
      "id": "6"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "da4ba0c4-1574-481c-bc7d-02204d84d7a8"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel_disableipsourceroutingipv6",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "6c0eda94-10c6-48b0-a6fa-a94142189829"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel_disableipsourceroutingipv6_2",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "1cd6d10d-e439-4fb0-bc32-ac4b1736076d",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a2f5f959-52fc-4bfe-acf8-48ff4d696d73",
            "useTemplateDefault": false
          }
        }
      },
      "id": "7"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "2cd149a3-d896-4062-a7c5-6e4a3febc508"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel_disableipsourcerouting",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "1f92962d-a9f7-4062-a298-b646fe5e7776"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel_disableipsourcerouting_2",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "8a20ccb6-8543-48b3-9076-047283eaec0e",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c360f490-e7fe-44ea-aa77-77b27351e9e6",
            "useTemplateDefault": false
          }
        }
      },
      "id": "8"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_msslegacy_allowicmpredirectstooverrideospfgeneratedroutes",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9743e6c4-998f-4b71-9f09-990d8c6a324f"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_msslegacy_allowicmpredirectstooverrideospfgeneratedroutes_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "dd780fd6-8cf7-4813-9a04-baa0d093a3ef",
            "useTemplateDefault": false
          }
        }
      },
      "id": "9"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_msslegacy_allowthecomputertoignorenetbiosnamereleaserequestsexceptfromwinsservers",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f0fa834d-85de-44ef-a917-21c0b8df2d28"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_msslegacy_allowthecomputertoignorenetbiosnamereleaserequestsexceptfromwinsservers_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d548f09a-bcfe-4e96-886f-5a1681fca8e5",
            "useTemplateDefault": false
          }
        }
      },
      "id": "10"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_admx_dnsclient_turn_off_multicast",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "3a78a41c-2c9a-48c7-a74e-638672069e69"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_admx_dnsclient_turn_off_multicast_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "614b2818-c5c4-41ab-891b-bbcd7c10b559",
            "useTemplateDefault": false
          }
        }
      },
      "id": "11"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_admx_networkconnections_nc_showsharedaccessui",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "a5b690ca-05a7-462f-b137-bd32fab190c1"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_admx_networkconnections_nc_showsharedaccessui_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "74b22a85-bd94-45ac-807b-3908538779fb",
            "useTemplateDefault": false
          }
        }
      },
      "id": "12"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_connectivity_hardeneduncpaths",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "d91dd0cc-d856-48ca-817a-2f6e96013d30"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "fa178b97-7a2b-43fd-a068-f3b653e412cb"
              },
              "groupSettingCollectionValue": [
                {
                  "settingValueTemplateReference": null,
                  "children": [
                    {
                      "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                      "settingDefinitionId": "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_value",
                      "settingInstanceTemplateReference": {
                        "settingInstanceTemplateId": "1aac51f5-f6b2-4965-a024-259dd36cce09"
                      },
                      "simpleSettingValue": {
                        "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                        "value": "RequireMutualAuthentication=1,RequireIntegrity=1",
                        "settingValueTemplateReference": {
                          "settingValueTemplateId": "8cd0b065-98d3-4a23-8579-d6b565851bad",
                          "useTemplateDefault": false
                        }
                      }
                    },
                    {
                      "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                      "settingDefinitionId": "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_key",
                      "settingInstanceTemplateReference": {
                        "settingInstanceTemplateId": "5db029e9-257f-472e-96c3-59a0b2f454ef"
                      },
                      "simpleSettingValue": {
                        "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                        "value": "\\\\*\\NETLOGON",
                        "settingValueTemplateReference": {
                          "settingValueTemplateId": "014c1ef4-afa2-4db4-add8-1b756d105c46",
                          "useTemplateDefault": false
                        }
                      }
                    }
                  ]
                },
                {
                  "settingValueTemplateReference": null,
                  "children": [
                    {
                      "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                      "settingDefinitionId": "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_value",
                      "settingInstanceTemplateReference": {
                        "settingInstanceTemplateId": "1ecf4003-3dba-40d2-be0f-48960644a1e8"
                      },
                      "simpleSettingValue": {
                        "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                        "value": "RequireMutualAuthentication=1,RequireIntegrity=1",
                        "settingValueTemplateReference": {
                          "settingValueTemplateId": "527de6e1-d597-4298-9970-54674b77a34b",
                          "useTemplateDefault": false
                        }
                      }
                    },
                    {
                      "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                      "settingDefinitionId": "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_key",
                      "settingInstanceTemplateReference": {
                        "settingInstanceTemplateId": "8172ce33-2800-4e15-b72b-a7497b6b648c"
                      },
                      "simpleSettingValue": {
                        "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                        "value": "\\\\*\\SYSVOL",
                        "settingValueTemplateReference": {
                          "settingValueTemplateId": "dd00e3bd-1f36-4c8c-97da-0b3eab8d0a60",
                          "useTemplateDefault": false
                        }
                      }
                    }
                  ]
                }
              ]
            }
          ],
          "value": "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d5678c52-cc88-402a-ae64-80c534260680",
            "useTemplateDefault": false
          }
        }
      },
      "id": "13"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_windowsconnectionmanager_prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "db9beb19-a677-4741-ac01-6d5dbad87bb6"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_windowsconnectionmanager_prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "39c47e4d-8159-47f2-a7bf-cb6707fa74a3",
            "useTemplateDefault": false
          }
        }
      },
      "id": "14"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "user_vendor_msft_policy_config_admx_wpn_nolockscreentoastnotification",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "1ae482d1-4817-426d-8001-c86335d2d9ae"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "user_vendor_msft_policy_config_admx_wpn_nolockscreentoastnotification_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "00f5afaa-2fb3-43ce-bfaf-c1556c5f04fc",
            "useTemplateDefault": false
          }
        }
      },
      "id": "15"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_admx_credssp_allowencryptionoracle",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "67c9506c-2c17-4486-b36b-f05f2bca1405"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_admx_credssp_allowencryptionoracle_allowencryptionoracledrop",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "ccc4b81b-e461-4c02-b498-1e39fc5750de"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_admx_credssp_allowencryptionoracle_allowencryptionoracledrop_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "911aa630-939c-4e92-88e4-c7299e35df2a",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_admx_credssp_allowencryptionoracle_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2a7f62e3-229d-4239-80dd-4ffb86da132e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "16"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_credentialsdelegation_remotehostallowsdelegationofnonexportablecredentials",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "b5614652-b627-4f2e-b26e-011ab0aabfff"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_credentialsdelegation_remotehostallowsdelegationofnonexportablecredentials_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "9b3308e2-7934-49c8-b12b-5065e71cc6e9",
            "useTemplateDefault": false
          }
        }
      },
      "id": "17"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "e66778d2-c783-4359-8ddb-afeff7defa04"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_deviceinstall_classes_deny_retroactive",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "2e97fabe-3af2-4c13-83cf-eb82d7acc442"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_deviceinstall_classes_deny_retroactive_1",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "f5e47d94-ab4b-4439-9103-62a7d9a9e931",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
              "simpleSettingCollectionValue": [
                {
                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                  "value": "{d48179be-ec20-11d1-b6b8-00c04fa372a7}",
                  "settingValueTemplateReference": null
                }
              ],
              "settingDefinitionId": "device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_deviceinstall_classes_deny_list",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "2d66972a-e2c4-4525-b506-3a86c17d95b0"
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "40be1b72-0a1e-4b27-b5e5-991d3565246d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "18"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_system_bootstartdriverinitialization",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "61ae32f6-d676-4c56-83c6-2733c71c00c9"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_system_bootstartdriverinitialization_selectdriverloadpolicy",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "5772742b-0b3b-4388-ba7c-4737619e8616"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_system_bootstartdriverinitialization_selectdriverloadpolicy_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "20d93d4b-73f5-4a34-8252-2016b665cd96",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_system_bootstartdriverinitialization_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "6e3feb5a-29ef-4e07-8b67-a85e49c71d2e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "19"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "126e039f-ac4b-4854-8d05-06261efbcc59"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nobackground10",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "761a8555-4af9-4321-9979-2c2b01f618a4"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nobackground10_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "b8f7c2ad-25f5-48ba-83fc-733ae110d555",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nochanges10",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "2f6c4a59-96c3-444b-a85f-314e87e3289c"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nochanges10_1",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "bc72a669-542a-4f8b-85af-788c4ccee7aa",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "e1b89570-a2ac-42dc-88a9-e42cee871860",
            "useTemplateDefault": false
          }
        }
      },
      "id": "20"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_connectivity_disabledownloadingofprintdriversoverhttp",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "8b16abf7-5709-43f6-840e-3b1b96633eb2"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_connectivity_disabledownloadingofprintdriversoverhttp_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c7c4c603-aadd-4248-8ebd-8369cc44c876",
            "useTemplateDefault": false
          }
        }
      },
      "id": "21"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_connectivity_disableinternetdownloadforwebpublishingandonlineorderingwizards",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "3d849f02-ce4f-4282-b91a-65ad2f131e9f"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_connectivity_disableinternetdownloadforwebpublishingandonlineorderingwizards_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "3352902a-5da8-425c-a7a0-0a964d619568",
            "useTemplateDefault": false
          }
        }
      },
      "id": "22"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remoteassistance_solicitedremoteassistance",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "42031e33-95e8-4764-a80c-64e15b6cdbe1"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remoteassistance_solicitedremoteassistance_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2b6692ac-43f4-4f7b-9250-be684ef26cc3",
            "useTemplateDefault": false
          }
        }
      },
      "id": "23"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "88cff52f-7bcd-41d7-9486-4152f6e4f5d9"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients_rpcrestrictremoteclientslist",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "99af2000-edb4-4646-856e-507cfc68a21b"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients_rpcrestrictremoteclientslist_1",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "683530b4-d739-4bca-82e3-7063a205bc49",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c1c37201-6661-44a2-ab7e-cdc7d32e2fb4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "24"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_appruntime_allowmicrosoftaccountstobeoptional",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "1b5c0723-50a0-4b8d-bc9d-49aec07670b8"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_appruntime_allowmicrosoftaccountstobeoptional_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d1dcbc04-81e1-4568-9bab-93d810abfa18",
            "useTemplateDefault": false
          }
        }
      },
      "id": "25"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_autoplay_disallowautoplayfornonvolumedevices",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f251c411-4dc0-42cf-8862-28efffa1813f"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_autoplay_disallowautoplayfornonvolumedevices_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "fc8dcea1-4f7c-4993-a333-c260a3b5ca00",
            "useTemplateDefault": false
          }
        }
      },
      "id": "26"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "30af41d9-7528-47c0-82bb-6e738d39f3e4"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior_noautorun_dropdown",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "d31a90c3-8e8b-4fa5-b182-d95e14166d06"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior_noautorun_dropdown_1",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "5bd60af6-34d2-47b1-8c81-552cffbd1286",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "3d0b0500-0a14-4906-9728-8747b8625709",
            "useTemplateDefault": false
          }
        }
      },
      "id": "27"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_autoplay_turnoffautoplay",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "bae4cdaa-a3e8-443b-9b13-b94eb6e4d154"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_autoplay_turnoffautoplay_autorun_box",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "b8ec3994-debb-4431-98ea-2ec032fd9fff"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_autoplay_turnoffautoplay_autorun_box_255",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "382c09af-d4f2-4173-a702-b39de4a1defc",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_autoplay_turnoffautoplay_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "591bd619-f484-467d-8869-c67226b8848f",
            "useTemplateDefault": false
          }
        }
      },
      "id": "28"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_credentialsui_enumerateadministrators",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "630a5b73-8188-43ee-9f44-f6ae6cff0248"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_credentialsui_enumerateadministrators_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "12e4f59c-3e74-40a0-ae22-d18601d49bfa",
            "useTemplateDefault": false
          }
        }
      },
      "id": "29"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizeapplicationlog",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "8bf65ff7-9592-4972-a5d9-d2b0b20c71f0"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizeapplicationlog_channel_logmaxsize",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "7593a380-b73e-4abf-ad18-5ed1174d06e4"
              },
              "simpleSettingValue": {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                "value": 32768,
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "8f31c4a9-4052-4305-8c4e-fd1f17b6fb5f",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizeapplicationlog_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "16f75a38-05ce-4a40-a228-bb6c6882d01f",
            "useTemplateDefault": false
          }
        }
      },
      "id": "30"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesecuritylog",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "820d4142-2e0e-4348-8fdc-f6197a503381"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesecuritylog_channel_logmaxsize",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "91a3fc21-bd29-4c56-a1a6-6d80bf3b4c5a"
              },
              "simpleSettingValue": {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                "value": 196608,
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "b151518d-d9ab-456b-ad75-41a2490a8c76",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesecuritylog_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "253ca855-0463-49ec-b0ae-453fb4ad2af8",
            "useTemplateDefault": false
          }
        }
      },
      "id": "31"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesystemlog",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ba645652-4d24-433e-930a-37ed9170ecab"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesystemlog_channel_logmaxsize",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "28eea3c3-850f-4c59-b3ab-51444d2dfb73"
              },
              "simpleSettingValue": {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                "value": 32768,
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "fbfbfdae-536e-4c74-8cc3-7f5038821340",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesystemlog_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "64ded1e8-8951-4400-b198-c3d22b6f04cf",
            "useTemplateDefault": false
          }
        }
      },
      "id": "32"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "87a2a9bc-8f9f-4ebe-b63a-081672380567"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen_enablesmartscreendropdown",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "bae75487-9bda-491c-8da3-4884d8c81aa3"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen_enablesmartscreendropdown_block",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "5bb4de61-803b-47f7-b9c9-8329f56e0f1f",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "0dd678dd-3cc6-49c3-81bf-3f52e107c117",
            "useTemplateDefault": false
          }
        }
      },
      "id": "33"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_fileexplorer_turnoffdataexecutionpreventionforexplorer",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "75c3d79b-7266-4a09-a7ae-daed7eb90fad"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_fileexplorer_turnoffdataexecutionpreventionforexplorer_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "ad53c710-f89f-4ce0-8b30-3d7b06d92014",
            "useTemplateDefault": false
          }
        }
      },
      "id": "34"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_fileexplorer_turnoffheapterminationoncorruption",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f6e15787-b0a0-4766-a490-97764b473c4b"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_fileexplorer_turnoffheapterminationoncorruption_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "27b82957-b06e-4cf9-a44e-6931c6f2cefd",
            "useTemplateDefault": false
          }
        }
      },
      "id": "35"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_allowsoftwarewhensignatureisinvalid",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "fcdf1c86-c4f4-473f-98ec-7a4580f9eddf"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_allowsoftwarewhensignatureisinvalid_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "761210e5-7209-42ad-aad4-d3d701f16dd7",
            "useTemplateDefault": false
          }
        }
      },
      "id": "36"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_checkservercertificaterevocation",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "24ade6d2-32e9-4c4f-afca-1b1c85d96c7f"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_checkservercertificaterevocation_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "24acf5a8-8697-4c27-b08d-7596075252c7",
            "useTemplateDefault": false
          }
        }
      },
      "id": "37"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_checksignaturesondownloadedprograms",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "b51d7ab3-a608-4155-bc3c-a699229f54ea"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_checksignaturesondownloadedprograms_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4c38e023-dbc5-47a4-99a0-9de17d07d9af",
            "useTemplateDefault": false
          }
        }
      },
      "id": "38"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_donotallowactivexcontrolsinprotectedmode",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "008b6443-3d12-4d5a-bfe7-b011ec3a2db5"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_donotallowactivexcontrolsinprotectedmode_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "eab72485-d150-4626-b0d7-d03c7fd538a1",
            "useTemplateDefault": false
          }
        }
      },
      "id": "39"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_disableencryptionsupport",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "33b80b9c-4a4e-411d-820a-0a32a8397d71"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_disableencryptionsupport_advanced_wininetprotocoloptions",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "069ba029-35bf-431d-b788-cc3c6ea1149a"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_disableencryptionsupport_advanced_wininetprotocoloptions_2560",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "62d0546d-0d36-4763-89d3-5720c5bce853",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_disableencryptionsupport_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "8644a0ac-4a11-4d0c-a2cd-c7956b36a73f",
            "useTemplateDefault": false
          }
        }
      },
      "id": "40"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_disableprocessesinenhancedprotectedmode",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "5752c574-6877-4bd3-9d09-a9b534203449"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_disableprocessesinenhancedprotectedmode_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "65ac7fc3-70c1-4f32-8eae-c18779432a52",
            "useTemplateDefault": false
          }
        }
      },
      "id": "41"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_allowenhancedprotectedmode",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ceaf9a7d-fc21-417f-9efd-d631d11a7223"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_allowenhancedprotectedmode_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "9cc08d5c-d204-437f-aeab-11c0eb40f1f7",
            "useTemplateDefault": false
          }
        }
      },
      "id": "42"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowaccesstodatasources",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "1369a3aa-f476-4a81-bcfb-37823d6a2380"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowaccesstodatasources_iz_partname1406",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "2324754c-ae37-47bd-a537-47a6dd8741a2"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowaccesstodatasources_iz_partname1406_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "5127c67e-1b1f-4d3d-86ae-5f60ac5d06f3",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowaccesstodatasources_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "432c1ff6-6d4b-4235-864d-8f0adb07766e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "43"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowcopypasteviascript",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c070644c-11b8-4388-8a75-e37d50419f01"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowcopypasteviascript_iz_partname1407",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "61007992-2d6d-4ffe-946f-3c771ed8995c"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowcopypasteviascript_iz_partname1407_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "302b19ff-d012-40e7-9523-4d1a9b880565",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowcopypasteviascript_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "1c135b90-955c-4370-acc3-9b9e46a5cbcd",
            "useTemplateDefault": false
          }
        }
      },
      "id": "44"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowdraganddropcopyandpastefiles",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "019c294c-aa7d-49fe-8ae5-4b343134adae"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowdraganddropcopyandpastefiles_iz_partname1802",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "9438e232-1e24-4ef9-8172-cd24aeee7d09"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowdraganddropcopyandpastefiles_iz_partname1802_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "c126cca3-c02c-4902-a7a8-31c828415440",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowdraganddropcopyandpastefiles_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "58f52755-5a29-42b5-a0ef-ed78f721b0bb",
            "useTemplateDefault": false
          }
        }
      },
      "id": "45"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowloadingofxamlfiles",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "5a0d1aac-3fd2-43ff-a62d-984d6d19bf74"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowloadingofxamlfiles_iz_partname2402",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "11475f76-f3ab-4072-b537-35952b6d1537"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowloadingofxamlfiles_iz_partname2402_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "84d50a76-5ccc-4572-9fe5-f0d98f1eed45",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowloadingofxamlfiles_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "125a2825-9a5c-4182-b811-ac9ae0ca46da",
            "useTemplateDefault": false
          }
        }
      },
      "id": "46"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstouseactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c6b76be0-d76c-4fa7-a786-f04ebd204c1e"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstouseactivexcontrols_iz_partname120b",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "592432d9-107c-4868-a122-0cac47755fde"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstouseactivexcontrols_iz_partname120b_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "d8907d40-9b9a-4135-a1ab-cf6232b4dd7a",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstouseactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f321ba5e-be38-43c7-9316-70c28b08e073",
            "useTemplateDefault": false
          }
        }
      },
      "id": "47"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstousetdcactivexcontrol",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "e94950f5-7aca-42df-a998-7cc1f2ac657b"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstousetdcactivexcontrol_iz_partname120c",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "ed872806-46b5-4805-bd3f-9da40a18fd48"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstousetdcactivexcontrol_iz_partname120c_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "c9762a0f-0eee-46fd-a756-2df1efa79558",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstousetdcactivexcontrol_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "34d55f21-9726-4c7d-8e18-b385de7128e3",
            "useTemplateDefault": false
          }
        }
      },
      "id": "48"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptinitiatedwindows",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f5d0050b-317b-4ddf-a49a-bcaff99fc48b"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptinitiatedwindows_iz_partname2102",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "ad057fa4-106d-4d54-9b41-a9458fe40737"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptinitiatedwindows_iz_partname2102_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "5fc9516e-5fb6-4160-a2e8-c47c0d869ad1",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptinitiatedwindows_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "dfb7f434-74e6-4a14-b580-32effc008ff7",
            "useTemplateDefault": false
          }
        }
      },
      "id": "49"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptingofinternetexplorerwebbrowsercontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "779a1859-8ecd-4e92-83a0-1a91745742db"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptingofinternetexplorerwebbrowsercontrols_iz_partname1206",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "22f5755e-a449-4897-b192-79b54967af3c"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptingofinternetexplorerwebbrowsercontrols_iz_partname1206_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "ca2d70a7-1bc6-4677-8ded-18410eaa1cc0",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptingofinternetexplorerwebbrowsercontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "8af4430c-891d-407a-b219-9977ec7a8bdc",
            "useTemplateDefault": false
          }
        }
      },
      "id": "50"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptlets",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c6511031-1e62-4391-80d8-1184918b0b70"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptlets_iz_partname1209",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "4b29e97e-3934-4e8f-ac75-427fb35a7336"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptlets_iz_partname1209_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "37e31396-0f54-406f-b0b7-219b7bee19da",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptlets_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c06455ed-11cc-48a6-bafc-1aa2d5d9ed88",
            "useTemplateDefault": false
          }
        }
      },
      "id": "51"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowupdatestostatusbarviascript",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "5c11a974-fe91-461e-a1e9-9a083c06347d"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowupdatestostatusbarviascript_iz_partname2103",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "e2f5971e-9ec6-4cb0-bf54-9db8dfc1431a"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowupdatestostatusbarviascript_iz_partname2103_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "7393bca2-7ba1-4935-b7c9-629ae9a37a59",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowupdatestostatusbarviascript_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "633d0f29-eb75-4031-8d2a-5cefa858c0de",
            "useTemplateDefault": false
          }
        }
      },
      "id": "52"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowvbscripttorunininternetexplorer",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "88d83801-5126-4df2-bdf4-091ab1c20266"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowvbscripttorunininternetexplorer_iz_partname140c",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "46a5138a-2160-4e3c-a7d9-49879220b866"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowvbscripttorunininternetexplorer_iz_partname140c_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "4a83ad70-81cb-4519-99c5-91e8b8b75328",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowvbscripttorunininternetexplorer_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "dd2c1f88-63a3-46ec-946e-6300e2dec96b",
            "useTemplateDefault": false
          }
        }
      },
      "id": "53"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowautomaticpromptingforfiledownloads",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "cdc55a43-2662-4bd3-b7b6-13ce95ac263a"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowautomaticpromptingforfiledownloads_iz_partname2200",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "a2241c10-40c7-4dc0-8fa5-ab308e34e50e"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowautomaticpromptingforfiledownloads_iz_partname2200_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "09b29f64-b9b1-4aeb-bc56-e5f7d82a3fa2",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowautomaticpromptingforfiledownloads_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "6f752b2b-1d32-4fff-99b6-dbb5cf11aa61",
            "useTemplateDefault": false
          }
        }
      },
      "id": "54"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonedonotrunantimalwareagainstactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "fdeb5eb2-3b8b-40c0-93d8-1bd92aecd961"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonedonotrunantimalwareagainstactivexcontrols_iz_partname270c",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "74a293d7-fb51-4fcf-a261-14839e8b848e"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzonedonotrunantimalwareagainstactivexcontrols_iz_partname270c_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "f94ce31a-7114-414a-b339-3ef523bf5356",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzonedonotrunantimalwareagainstactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "75cf2038-efd9-4238-8638-3cd70c54beb4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "55"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadsignedactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "88efd26b-8537-4183-92b9-f9b28189cf2b"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadsignedactivexcontrols_iz_partname1001",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "01360e5e-3676-46d0-ad6e-ea9dd8855069"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadsignedactivexcontrols_iz_partname1001_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "e5f741e5-36f8-4522-a2c8-d1342b5cc061",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadsignedactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d2ff7a3e-17e8-4b5f-a5ff-07a98dcba9b0",
            "useTemplateDefault": false
          }
        }
      },
      "id": "56"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadunsignedactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c16d034f-bae9-44f1-ac38-f34e60572c52"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadunsignedactivexcontrols_iz_partname1004",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "1dce81ed-1614-49bd-ad25-8b5119de6512"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadunsignedactivexcontrols_iz_partname1004_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "787b759a-40ae-4045-b5e1-eef5163f1c07",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadunsignedactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "881b6954-c1b6-4886-99c9-a6d697b62f86",
            "useTemplateDefault": false
          }
        }
      },
      "id": "57"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "664c4a1d-a6db-4876-85cd-c6315dee9800"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows_iz_partname2709",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "59e8b176-e609-45cb-9de7-b9876d4ffca0"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows_iz_partname2709_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "b2372c90-05f9-4b50-a0ac-8afae924b5ec",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "fa263080-e42e-4d03-86f8-b9b4c54b39aa",
            "useTemplateDefault": false
          }
        }
      },
      "id": "58"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0114250d-8ff7-4d21-8730-a94d606b93bb"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows_iz_partname2708",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "eaceef27-6b0a-4c8f-b196-534bbed1f015"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows_iz_partname2708_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "f7223cc5-6d12-49e7-84fe-b73dd7eb4772",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "88bf8ebe-ec8e-4c13-97c3-b78a88c4f2c6",
            "useTemplateDefault": false
          }
        }
      },
      "id": "59"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneincludelocalpathwhenuploadingfilestoserver",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "5d2c2483-0919-471f-aea6-742ebc0751b7"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneincludelocalpathwhenuploadingfilestoserver_iz_partname160a",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "4f4f6264-c85a-4ac4-aafc-6b0a2caa8f74"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneincludelocalpathwhenuploadingfilestoserver_iz_partname160a_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "ac655d6c-169b-4b0b-b49b-d57505e8e104",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneincludelocalpathwhenuploadingfilestoserver_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "ea7bf076-44ca-4067-8175-94ba3a959d95",
            "useTemplateDefault": false
          }
        }
      },
      "id": "60"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneinitializeandscriptactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9b3f76ac-7fd7-44f5-ba25-e7ad7628659c"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneinitializeandscriptactivexcontrols_iz_partname1201",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "34d6f1aa-9d3e-49c2-b508-20f54a318537"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneinitializeandscriptactivexcontrols_iz_partname1201_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "7bb163a2-5b3b-499f-8ca6-6f18d4513ad0",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneinitializeandscriptactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f221de07-8b67-40a6-997b-a7fe7d0b5af7",
            "useTemplateDefault": false
          }
        }
      },
      "id": "61"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonejavapermissions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "8893226f-cb2b-4a54-951d-7fd9e446d8ab"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonejavapermissions_iz_partname1c00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "ceb580c4-a33a-4a74-805a-12cc39a41045"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzonejavapermissions_iz_partname1c00_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "8a52e2cb-2b41-4e8d-b4c8-164f50c8d1f9",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzonejavapermissions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "6548dddf-f3e8-4694-a148-f2388dc975f3",
            "useTemplateDefault": false
          }
        }
      },
      "id": "62"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonelaunchingapplicationsandfilesiniframe",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "bf655cca-dbe4-45c5-8dcd-0e5b0774d146"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonelaunchingapplicationsandfilesiniframe_iz_partname1804",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "2888f27c-24c9-4b5b-8b35-627652dabdd0"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzonelaunchingapplicationsandfilesiniframe_iz_partname1804_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "864e7ecd-8f4c-4933-80c1-12ecc23b80e1",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzonelaunchingapplicationsandfilesiniframe_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "01ced0e5-7113-470c-b458-024238aed012",
            "useTemplateDefault": false
          }
        }
      },
      "id": "63"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonelogonoptions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "19276f40-6959-4a5b-a4ac-96cbb52126f7"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonelogonoptions_iz_partname1a00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "ae22698c-c0f5-44bd-83b8-04c00123cbb4"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzonelogonoptions_iz_partname1a00_65536",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "9254f7c0-9f14-41a6-834b-5bb7ccfef999",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzonelogonoptions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d4f2448b-2fbe-4e35-aaf8-05cc02e9b60d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "64"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonenavigatewindowsandframes",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ca02b2bd-6785-478e-9791-88e43c6af070"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonenavigatewindowsandframes_iz_partname1607",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "c11dd70e-d1cf-4625-8215-f2f770f1033a"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzonenavigatewindowsandframes_iz_partname1607_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "fa9c2eec-d06f-4fe0-bce7-df6edf53d304",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzonenavigatewindowsandframes_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "860c4755-790e-4a08-95b6-6983dea2bb57",
            "useTemplateDefault": false
          }
        }
      },
      "id": "65"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallownetframeworkreliantcomponents",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ec3937a8-a224-4aec-925c-2ac811e454fa"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallownetframeworkreliantcomponents_iz_partname2004",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "7628a07c-c2fe-47df-bdc9-ddb54193ff12"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallownetframeworkreliantcomponents_iz_partname2004_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "d7c71707-d381-4603-8c88-bcaced621249",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallownetframeworkreliantcomponents_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d76a0e51-1674-4437-b6ab-52f56e37b0f4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "66"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonerunnetframeworkreliantcomponentssignedwithauthenticode",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "16915417-cec2-47ac-a4c7-aa88eb330c29"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzonerunnetframeworkreliantcomponentssignedwithauthenticode_iz_partname2001",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "503d1093-dbcd-4f2c-82b5-7e8c7f442f72"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzonerunnetframeworkreliantcomponentssignedwithauthenticode_iz_partname2001_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "815b6704-0314-4e20-af8b-85f0a20aba8d",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzonerunnetframeworkreliantcomponentssignedwithauthenticode_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "ecd7552a-4bcc-402b-9682-2951fb99bf72",
            "useTemplateDefault": false
          }
        }
      },
      "id": "67"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneshowsecuritywarningforpotentiallyunsafefiles",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "8ad5de4f-9e33-4ce1-968f-e3bf389faebe"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneshowsecuritywarningforpotentiallyunsafefiles_iz_partname1806",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "415bbee9-1d9c-4685-b252-9f3961db1c62"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneshowsecuritywarningforpotentiallyunsafefiles_iz_partname1806_1",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "97c97395-2cb5-497f-92b9-a0697791b73c",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneshowsecuritywarningforpotentiallyunsafefiles_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "3095b3ac-bdb5-4fbe-b519-8bb6a743c22d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "68"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneenablecrosssitescriptingfilter",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ac314a32-5856-44da-8b8e-0a1608a34550"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneenablecrosssitescriptingfilter_iz_partname1409",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "e404e440-9061-47f4-a597-b069734c2483"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneenablecrosssitescriptingfilter_iz_partname1409_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "588461a1-1d82-44ea-b861-ef14f752e851",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneenablecrosssitescriptingfilter_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "3e7f8d54-1eca-4f2c-b6df-d57402ae1180",
            "useTemplateDefault": false
          }
        }
      },
      "id": "69"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneenableprotectedmode",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "5d28419c-79bf-41d9-a42d-d9c0154bd0df"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneenableprotectedmode_iz_partname2500",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "90e3967a-76d3-4ac3-be30-f1b4ab261a0f"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneenableprotectedmode_iz_partname2500_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "3b049712-8a0e-469c-afb6-2982e6a1e084",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneenableprotectedmode_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "e3bf154f-65ee-4cab-9639-c9663a1de30e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "70"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowsmartscreenie",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "4e480a44-cba2-4743-96f2-4a48af1f6491"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowsmartscreenie_iz_partname2301",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "e37161d4-4b50-4721-ba18-8ccfb802badc"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowsmartscreenie_iz_partname2301_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "87aa5332-9e59-4042-a562-66bde0cb42c1",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowsmartscreenie_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "cc534149-9335-4b34-b3f0-4b1ddb0948d3",
            "useTemplateDefault": false
          }
        }
      },
      "id": "71"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneusepopupblocker",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "67bf9da5-056a-4671-920f-b73493ef87df"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneusepopupblocker_iz_partname1809",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "021e9ca6-c68f-4f26-b526-64e28987cad4"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneusepopupblocker_iz_partname1809_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "85498701-5951-4ecf-bc10-10c0e0c97218",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneusepopupblocker_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "146f4246-54dd-474b-9b67-fee884d7f5fd",
            "useTemplateDefault": false
          }
        }
      },
      "id": "72"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowuserdatapersistence",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "91f78f42-d219-4ba5-9f40-960bc530298b"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowuserdatapersistence_iz_partname1606",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "9353351b-71a5-4cda-b15c-69577d06b192"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowuserdatapersistence_iz_partname1606_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "a3eb550b-bffd-421a-9fab-43bb5a3370c0",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowuserdatapersistence_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5459f189-417f-4734-8c9c-4b87da89229a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "73"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowlessprivilegedsites",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "7ae94588-ec6f-45f7-858b-d75c12a4a5ee"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowlessprivilegedsites_iz_partname2101",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "9215f369-0108-46ee-8cfe-35e7b0f3e138"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowlessprivilegedsites_iz_partname2101_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "c678e06f-2453-401e-be81-7365e03d5950",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_internetzoneallowlessprivilegedsites_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "47bcd0c0-f5e0-4647-9537-41402042f3b7",
            "useTemplateDefault": false
          }
        }
      },
      "id": "74"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_intranetzonedonotrunantimalwareagainstactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "b7d0d5aa-c96a-463e-820f-5d693f694d31"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_intranetzonedonotrunantimalwareagainstactivexcontrols_iz_partname270c",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "9608d2dc-8157-4656-8ec1-22dde362b5d3"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_intranetzonedonotrunantimalwareagainstactivexcontrols_iz_partname270c_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "bcd901e6-70f9-44ae-8236-568d445011a3",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_intranetzonedonotrunantimalwareagainstactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f5978c52-3b7c-4b27-b61d-f4089f240312",
            "useTemplateDefault": false
          }
        }
      },
      "id": "75"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_intranetzoneinitializeandscriptactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "70a2d479-321c-4b24-9009-6e6b384a754c"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_intranetzoneinitializeandscriptactivexcontrols_iz_partname1201",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "db96341e-7a1f-421c-9a25-569fbae60e2e"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_intranetzoneinitializeandscriptactivexcontrols_iz_partname1201_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "1b50bb9a-ac53-4a80-9a76-a4033fc586c2",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_intranetzoneinitializeandscriptactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "79ad5d2e-0df9-4605-a2fd-dbaaa4a27dfc",
            "useTemplateDefault": false
          }
        }
      },
      "id": "76"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_intranetzonejavapermissions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "4c399014-5695-4ac5-85de-ecbffa5e2438"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_intranetzonejavapermissions_iz_partname1c00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "766047c4-b176-4f84-9c3e-a775569c385b"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_intranetzonejavapermissions_iz_partname1c00_65536",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "6083c64d-ca5b-4720-bb25-99bd102fe5e1",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_intranetzonejavapermissions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "b3fed13e-6eb2-4b4f-b832-fb9356e0dbb5",
            "useTemplateDefault": false
          }
        }
      },
      "id": "77"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_localmachinezonedonotrunantimalwareagainstactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f0403eb4-01bc-4850-bf20-3ff85554cfa8"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_localmachinezonedonotrunantimalwareagainstactivexcontrols_iz_partname270c",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "d810bd25-6ea3-4061-8338-4b00a93d9b16"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_localmachinezonedonotrunantimalwareagainstactivexcontrols_iz_partname270c_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "63f7fa89-c615-4c28-aac8-01b8757f7192",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_localmachinezonedonotrunantimalwareagainstactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c1f0d1c9-5f53-45b9-8d24-f3bf15a70fac",
            "useTemplateDefault": false
          }
        }
      },
      "id": "78"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_localmachinezonejavapermissions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f2952361-64ea-4bb4-8451-50939da60765"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_localmachinezonejavapermissions_iz_partname1c00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "12f9af99-c385-44a3-a52b-ed67427e7d17"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_localmachinezonejavapermissions_iz_partname1c00_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "c2642eeb-29b9-42f8-98ab-a1950c11da09",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_localmachinezonejavapermissions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f3ad2788-3b37-473d-9358-2c546e2af4a4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "79"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddowninternetzoneallowsmartscreenie",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "d91d4787-aa02-4e4c-b1ee-ca580daf230c"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddowninternetzoneallowsmartscreenie_iz_partname2301",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "0243da9b-d83c-4680-a749-acac8eee1311"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_lockeddowninternetzoneallowsmartscreenie_iz_partname2301_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "10c6ccbc-1609-45e9-82ec-1eadec0505a9",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_lockeddowninternetzoneallowsmartscreenie_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5f7d447b-2e53-4eca-a68f-7e95ecc17042",
            "useTemplateDefault": false
          }
        }
      },
      "id": "80"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddownintranetjavapermissions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "2c3ee570-b763-475d-be08-21591fa1e2b4"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddownintranetjavapermissions_iz_partname1c00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "2300727d-204f-4038-9ee2-f3ddcd352e31"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_lockeddownintranetjavapermissions_iz_partname1c00_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "ced3005e-8223-4479-97c8-d93cb21a826b",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_lockeddownintranetjavapermissions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d64881dc-2c7b-4e89-8920-717d2b96216e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "81"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddownlocalmachinezonejavapermissions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "5e0a3244-0e6e-4e43-b354-a1a96c64be93"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddownlocalmachinezonejavapermissions_iz_partname1c00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "ec679486-1e7b-4dcf-bb7a-38c85aeb0862"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_lockeddownlocalmachinezonejavapermissions_iz_partname1c00_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "20985bb1-4d60-4a78-9fef-66216bb8db12",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_lockeddownlocalmachinezonejavapermissions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4e882cce-b981-43cc-83ea-944798c2c9e9",
            "useTemplateDefault": false
          }
        }
      },
      "id": "82"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszonejavapermissions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "fb4f41ca-ecd2-4602-bf45-198a7370b5e8"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszonejavapermissions_iz_partname1c00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "03139af8-c1e9-4141-a1c5-7c6acb4c51f9"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszonejavapermissions_iz_partname1c00_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "ecbb0060-e8f1-452e-8d50-a32c39fa076b",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszonejavapermissions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d970b516-9a47-4e47-809b-90663b3bef21",
            "useTemplateDefault": false
          }
        }
      },
      "id": "83"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszoneallowsmartscreenie",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c5caac16-58a0-4729-ab68-948dcb55aa5c"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszoneallowsmartscreenie_iz_partname2301",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "5dc4c035-e8d2-4f42-bccb-02686019b46c"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszoneallowsmartscreenie_iz_partname2301_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "4fa2e3d8-dcc2-4cde-8b6b-d9f19ad1d039",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszoneallowsmartscreenie_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2dd511e9-6c5f-4d9a-8811-41a895fdb58d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "84"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddowntrustedsiteszonejavapermissions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "99312528-e079-4202-bac9-22439ae5f083"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_lockeddowntrustedsiteszonejavapermissions_iz_partname1c00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "2cc4318c-a0a5-463e-9e5d-fb53bcff5a83"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_lockeddowntrustedsiteszonejavapermissions_iz_partname1c00_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "bc8937ed-572a-4e8d-bf81-65dfc060e00a",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_lockeddowntrustedsiteszonejavapermissions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5eebd65f-5f34-4206-85b0-5c8583031c8e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "85"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowaccesstodatasources",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "95ec56f4-62e8-4610-9dc3-870a7cf1e40d"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowaccesstodatasources_iz_partname1406",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "a0a710b1-c6ff-4435-86fe-7df756a3d694"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowaccesstodatasources_iz_partname1406_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "222010cd-88aa-4ef9-95cf-8f6ba46ce7de",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowaccesstodatasources_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "dac9bc76-dfc5-481e-978f-67c9b7ef5a2b",
            "useTemplateDefault": false
          }
        }
      },
      "id": "86"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowactivescripting",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "356c8ef2-8e2e-4c55-9622-0cb7978a014c"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowactivescripting_iz_partname1400",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "c33a1480-b83b-428b-a458-9920cdf64db7"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowactivescripting_iz_partname1400_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "2c04ec7c-4e6c-45b0-9b54-f24a98b33146",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowactivescripting_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "978864a6-5f1c-49fc-bfa3-2529d6b73b5d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "87"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowbinaryandscriptbehaviors",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f2bfd856-ba6c-41d3-9b04-9f2a1de2630f"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowbinaryandscriptbehaviors_iz_partname2000",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "761dc689-1374-4393-9c94-a6182a00d610"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowbinaryandscriptbehaviors_iz_partname2000_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "fe009e37-504d-440d-9d6d-d9050764edf0",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowbinaryandscriptbehaviors_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "80123e34-5fb9-428e-aad9-116e6314d2d0",
            "useTemplateDefault": false
          }
        }
      },
      "id": "88"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowcopypasteviascript",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "74dce335-ae7a-4871-9ab2-f41b3eef8cc1"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowcopypasteviascript_iz_partname1407",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "df3841d3-1aaa-4f72-b51a-86fc460b5541"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowcopypasteviascript_iz_partname1407_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "78642267-26d1-411e-b71f-9d0c91a4d1b5",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowcopypasteviascript_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "8b4a94c7-4c65-4da7-b298-62cf8519911a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "89"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowdraganddropcopyandpastefiles",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "da721acf-937b-433e-bcf6-1894859f72c6"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowdraganddropcopyandpastefiles_iz_partname1802",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "e7aa2556-9c46-4f75-9519-1729329f4772"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowdraganddropcopyandpastefiles_iz_partname1802_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "41e2b5b6-e1e0-4989-8ad3-08c542de1dc0",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowdraganddropcopyandpastefiles_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "50960c70-94e6-41ed-8c9e-fe3ffb8cdee8",
            "useTemplateDefault": false
          }
        }
      },
      "id": "90"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowfiledownloads",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "e1464b25-761e-48ef-b0f6-06d888e5290c"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowfiledownloads_iz_partname1803",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "3486f53a-0bea-41cf-9021-1f41b6d85f84"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowfiledownloads_iz_partname1803_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "53dc99f4-d682-4db7-b938-809ab78a5b03",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowfiledownloads_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f9f6091a-1232-4a31-a562-368b76be2c5b",
            "useTemplateDefault": false
          }
        }
      },
      "id": "91"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowloadingofxamlfiles",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "673a0a63-d96b-4a94-b484-9c5fe97e2c6d"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowloadingofxamlfiles_iz_partname2402",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "169c9368-0e89-45f5-87c5-be38b1ba4785"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowloadingofxamlfiles_iz_partname2402_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "4e612b03-4dd2-40a2-b2ed-aa376f755832",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowloadingofxamlfiles_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "ab6ff3a1-d836-4083-98b4-b3c2b2bed393",
            "useTemplateDefault": false
          }
        }
      },
      "id": "92"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowmetarefresh",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "6a5799cc-096b-434d-b6f1-3f9005d2ace7"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowmetarefresh_iz_partname1608",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "b10eb4b7-6c94-4363-9d1c-f46dc9d372dd"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowmetarefresh_iz_partname1608_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "467fd873-4bcb-4927-ab75-63d0808658d5",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowmetarefresh_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "ae520677-a501-4e8f-a566-bf3db63ab75a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "93"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f2d06ce2-76eb-4008-89ed-37abf830dd6c"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols_iz_partname120b",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "6ff801c7-7461-4557-9a14-b6c7fd4f8d3c"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols_iz_partname120b_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "c4c0d2fc-a483-442b-abdc-962c3afa68fd",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "dba960a2-0af2-45aa-a484-033d04755df3",
            "useTemplateDefault": false
          }
        }
      },
      "id": "94"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "1f38af96-e3bb-4f04-8313-26abfce5f287"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol_iz_partname120c",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "294c8d17-81db-4baf-89d7-f45074cb547b"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol_iz_partname120c_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "2d2fd6dc-99a9-4524-be13-c81e430e2fea",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "1246d480-4d67-4de3-9987-b50cdd86ab99",
            "useTemplateDefault": false
          }
        }
      },
      "id": "95"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptinitiatedwindows",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ddd43048-e2bb-4cca-ae66-83d3a6c8e3bc"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptinitiatedwindows_iz_partname2102",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "67f80d35-27db-4b03-a5bd-fe112d69a682"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptinitiatedwindows_iz_partname2102_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "721230f1-e5d1-49ae-bc0b-9289c06ae0ea",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptinitiatedwindows_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "63db1e51-bc2a-4590-baf4-a243ecf7ae70",
            "useTemplateDefault": false
          }
        }
      },
      "id": "96"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "5a8a17da-4c2d-42d0-8267-ace0fb8576af"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols_iz_partname1206",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "3862c0d0-3679-437a-96a5-7343b40bdc8f"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols_iz_partname1206_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "93871819-65e3-43a0-bbba-67797e95bc04",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "86014267-a704-4c37-bf3f-ce0c9ce894ea",
            "useTemplateDefault": false
          }
        }
      },
      "id": "97"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptlets",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "1bdcc80a-8ff5-4a38-aac8-bcacbe12e230"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptlets_iz_partname1209",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "af30d7e5-55ba-4507-9a85-435b9f582f36"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptlets_iz_partname1209_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "85151df8-b82b-4424-b315-ab83dbd13c3f",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptlets_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "dfeb1397-bac9-4178-91f2-08b480f93e6b",
            "useTemplateDefault": false
          }
        }
      },
      "id": "98"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowupdatestostatusbarviascript",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "7cd17aa9-725e-4e5d-bfe1-89375be179a3"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowupdatestostatusbarviascript_iz_partname2103",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "31446b0d-689a-49ca-9f01-0d75e2ba5e27"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowupdatestostatusbarviascript_iz_partname2103_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "f87ed5bd-30fb-498e-8901-91beecab23c0",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowupdatestostatusbarviascript_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4abdc596-f3a9-46be-8ab5-530c649d17b3",
            "useTemplateDefault": false
          }
        }
      },
      "id": "99"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowvbscripttorunininternetexplorer",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "d3d29239-369e-4538-94b8-a7ba50b43fb7"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowvbscripttorunininternetexplorer_iz_partname140c",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "33c0beea-6f55-460e-a98a-7c8aaa07cf43"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowvbscripttorunininternetexplorer_iz_partname140c_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "cddf7b31-f285-4d8d-9b70-103baf21e1bb",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowvbscripttorunininternetexplorer_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "435fbc42-9351-47b9-baf6-3ea174f6821d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "100"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowautomaticpromptingforfiledownloads",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ae32fc3a-24a5-4f7a-b373-34ddbc885da7"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowautomaticpromptingforfiledownloads_iz_partname2200",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "d5fddedb-0b31-4cfb-972b-8549faf8db08"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowautomaticpromptingforfiledownloads_iz_partname2200_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "5669a9e0-b202-49e7-a583-76a1054f1647",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowautomaticpromptingforfiledownloads_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a194c9ff-0471-4377-b32d-3ef55894ee15",
            "useTemplateDefault": false
          }
        }
      },
      "id": "101"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedonotrunantimalwareagainstactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "bbeb51e3-4db0-470c-92a9-bc0c220735ec"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedonotrunantimalwareagainstactivexcontrols_iz_partname270c",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "27d775e8-758c-46af-b637-b957368bd1dc"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedonotrunantimalwareagainstactivexcontrols_iz_partname270c_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "7577a0a5-853c-4007-ab87-a039692117b3",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedonotrunantimalwareagainstactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d63615a2-e468-4154-a09d-795668483026",
            "useTemplateDefault": false
          }
        }
      },
      "id": "102"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadsignedactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "d214f19a-bf82-4bb2-9c51-35df9f591af0"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadsignedactivexcontrols_iz_partname1001",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "4cf3521b-0ef9-4dba-b72b-ed697261628e"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadsignedactivexcontrols_iz_partname1001_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "693b682d-7860-4265-a4ec-d60f88adad14",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadsignedactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a39dc54d-c4a1-4c35-b61e-0c55ce4eaa69",
            "useTemplateDefault": false
          }
        }
      },
      "id": "103"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadunsignedactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "6a202539-cf30-4b8b-8d87-1a279141960c"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadunsignedactivexcontrols_iz_partname1004",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "342642ce-19cc-4316-9017-752901b321e5"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadunsignedactivexcontrols_iz_partname1004_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "8812697e-78be-4f4a-8f4f-e1254b068476",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadunsignedactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "78650d1c-b4b1-4e26-8acc-1a690e8889f1",
            "useTemplateDefault": false
          }
        }
      },
      "id": "104"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "b3b74b1f-46d9-485f-bcb6-8f215322ab02"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows_iz_partname2709",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "eab26145-82fa-4c26-9f39-2192dc5fa981"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows_iz_partname2709_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "5862b59b-4d04-41f2-8ea6-5ca7a2b9e7e3",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "858905ed-8e84-4ded-be83-7abcc522da14",
            "useTemplateDefault": false
          }
        }
      },
      "id": "105"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c15c0090-3793-4aa4-a244-7b2cd447e127"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows_iz_partname2708",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "fad761f2-45a5-4e77-9508-c119f3cf9eeb"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows_iz_partname2708_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "31fba84a-5b83-4029-ae3e-9873e4c2a5ef",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "0b7f9138-9a0d-48c1-beb4-887600064019",
            "useTemplateDefault": false
          }
        }
      },
      "id": "106"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "766d6409-a9a3-485e-b98f-4ac62cc7ef93"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver_iz_partname160a",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "47de1be9-bbc3-4109-969a-8aa6e15b0980"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver_iz_partname160a_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "9ab05829-3254-4dd6-b8c6-85fba75b8f6a",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "8a70109a-b58d-48c8-a09b-e234d6ea1dbf",
            "useTemplateDefault": false
          }
        }
      },
      "id": "107"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneinitializeandscriptactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "857107bf-20e9-4383-a6e3-833fcfa2c8b2"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneinitializeandscriptactivexcontrols_iz_partname1201",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "ee5d8eb8-199e-4a1c-815f-d614035a9d1e"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneinitializeandscriptactivexcontrols_iz_partname1201_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "74631b65-ca3b-4724-bad7-85f4ceb2e419",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneinitializeandscriptactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "21a93ca8-784b-4f2f-9ee1-5c586aef61a8",
            "useTemplateDefault": false
          }
        }
      },
      "id": "108"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonejavapermissions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "98dae3c5-2eca-4a90-a156-44817fd7aebb"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonejavapermissions_iz_partname1c00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "56a45162-ad8d-41b4-988a-c1455c085833"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonejavapermissions_iz_partname1c00_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "8ec4cb28-90cd-4d45-a033-2e7ec6b2c2eb",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonejavapermissions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "375b828d-7558-4819-a71b-8f92a0daa83c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "109"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelaunchingapplicationsandfilesiniframe",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "de059dd2-537c-4d4e-8608-25cefda7dd6f"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelaunchingapplicationsandfilesiniframe_iz_partname1804",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "adeb61f3-3a7b-4d69-a3ba-eca58e4700b4"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelaunchingapplicationsandfilesiniframe_iz_partname1804_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "e7835db8-5baa-4bf5-8e09-023e3e315f91",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelaunchingapplicationsandfilesiniframe_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "0aabc9c0-995a-4f48-bd6e-e91bb02d9589",
            "useTemplateDefault": false
          }
        }
      },
      "id": "110"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelogonoptions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "2d4c410d-0abd-47ef-a7f4-66c1de47e5d7"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelogonoptions_iz_partname1a00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "a64741a6-ce32-499e-9541-5e42d52129ca"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelogonoptions_iz_partname1a00_196608",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "90e7d18f-86b1-4e57-83d5-97998b4f5821",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelogonoptions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2f6c885b-6ecf-4d71-bfa0-5c983990239c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "111"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonenavigatewindowsandframes",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "b12d180c-b133-4133-9637-b7b772a5c091"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonenavigatewindowsandframes_iz_partname1607",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "c3e2c4da-dcba-4e06-b821-675b9cd04b16"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonenavigatewindowsandframes_iz_partname1607_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "670e7eb3-e49a-4314-baa8-dae1ea6ad3b0",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonenavigatewindowsandframes_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2f513b52-c1ea-4beb-bfb6-5ec833a3ecd8",
            "useTemplateDefault": false
          }
        }
      },
      "id": "112"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallownetframeworkreliantcomponents",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "da6e0aca-768d-4fb3-9bab-229cfaf20b94"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallownetframeworkreliantcomponents_iz_partname2004",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "81309b25-c08e-43cf-9425-f48a1e3f19b8"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallownetframeworkreliantcomponents_iz_partname2004_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "4828f6dc-5a78-49c5-8da2-dfc8441f3188",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallownetframeworkreliantcomponents_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "0e758fa3-fefa-41a2-9afa-f953c16a1d38",
            "useTemplateDefault": false
          }
        }
      },
      "id": "113"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "110296d5-7607-4218-a177-5b4c3f025c27"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode_iz_partname2001",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "2de3af35-7964-47dc-950b-d90e6aeb1314"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode_iz_partname2001_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "81a386e2-fbd3-4799-b569-c4008d7ea16a",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2626263a-fbb5-4af3-a673-2a058027cc0c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "114"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunactivexcontrolsandplugins",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "23ba706c-83ae-4986-8be5-e06c9d65529d"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunactivexcontrolsandplugins_iz_partname1200",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "3a7a78b0-325c-4201-8099-1aa0c15f8331"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunactivexcontrolsandplugins_iz_partname1200_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "881f4a9d-7d53-49f8-903e-a03f4ef5cda1",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunactivexcontrolsandplugins_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "09f9c09c-3851-4491-8822-70c91cb991d3",
            "useTemplateDefault": false
          }
        }
      },
      "id": "115"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "058c40c1-a88e-465d-8076-64434d3fb509"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting_iz_partname1405",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "ed4c23c4-155b-4ee7-9a15-d12f65072bcd"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting_iz_partname1405_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "5ef31ca1-2e48-4a3a-80ad-f33c720879a8",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "8d281a1e-7fad-4458-9740-9a5e3f47ec1f",
            "useTemplateDefault": false
          }
        }
      },
      "id": "116"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptingofjavaapplets",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ac3e8c90-98ad-4548-adf0-4927f6727d25"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptingofjavaapplets_iz_partname1402",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "22c7e8a7-3d26-4106-a2aa-dd2ee38993f8"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptingofjavaapplets_iz_partname1402_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "f60727ed-35ae-4928-a03b-c8910982727c",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptingofjavaapplets_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "45782168-b1a6-4397-bd21-35c13c7d2ee1",
            "useTemplateDefault": false
          }
        }
      },
      "id": "117"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f440ec14-238b-4e8c-aa48-2627a3d9d9b7"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles_iz_partname1806",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "8bfbd3b8-ccdc-41d5-ba93-1522c76075f6"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles_iz_partname1806_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "8eb40701-c13a-4353-8c93-93b23b2ce859",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "8e23bcab-8298-46dc-999e-094dc6353723",
            "useTemplateDefault": false
          }
        }
      },
      "id": "118"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenablecrosssitescriptingfilter",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "96a360c0-d2ab-4ce1-829c-2ad4287abed6"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenablecrosssitescriptingfilter_iz_partname1409",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "984265f3-9ffa-4524-b81a-4bc3568a5ffb"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenablecrosssitescriptingfilter_iz_partname1409_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "080684c6-900a-44b8-b85d-a207762047d4",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenablecrosssitescriptingfilter_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "38e5caf6-65ee-45a6-bb7b-d38f1a5ac9af",
            "useTemplateDefault": false
          }
        }
      },
      "id": "119"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneturnonprotectedmode",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "fb0034d2-4191-423e-bc41-085307c8f979"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneturnonprotectedmode_iz_partname2500",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "b1fd0605-c094-4269-b088-2cc163259f3f"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneturnonprotectedmode_iz_partname2500_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "39325803-9726-44ff-9380-21f1f22eff34",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneturnonprotectedmode_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "7d4c1628-6122-410d-a7ba-96d73640ca11",
            "useTemplateDefault": false
          }
        }
      },
      "id": "120"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowsmartscreenie",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "07438974-5aad-4a72-9862-2bd94d4cbfbb"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowsmartscreenie_iz_partname2301",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "e4377881-f1f5-48dc-86fd-3b215e78eb12"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowsmartscreenie_iz_partname2301_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "a6b9a5bc-2a19-4ebd-99dd-90b223ec3754",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowsmartscreenie_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "abb20ea0-07d4-484d-9750-9b378a7e2485",
            "useTemplateDefault": false
          }
        }
      },
      "id": "121"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneusepopupblocker",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "4ceba740-edbe-4ac8-8b49-344b1eac858a"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneusepopupblocker_iz_partname1809",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "4112fe7c-0d66-414d-9722-909d7986cbb4"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneusepopupblocker_iz_partname1809_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "84ed4f9e-e673-4bb8-a98d-7d1a71277775",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneusepopupblocker_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d0dc2769-4a43-438e-a5da-c57495006c24",
            "useTemplateDefault": false
          }
        }
      },
      "id": "122"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowuserdatapersistence",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "e22f5874-2740-4df9-b27d-6d24bba23dac"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowuserdatapersistence_iz_partname1606",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "f58fb7a8-9497-43ab-890d-7e23f6434d5e"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowuserdatapersistence_iz_partname1606_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "67525dbf-95f3-418c-b3bd-efcb109a14e2",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowuserdatapersistence_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a9968a82-38ac-4a24-b401-ea9fee143cb4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "123"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowlessprivilegedsites",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "7e1c971a-165b-4320-9aa8-9e1b3543b11d"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowlessprivilegedsites_iz_partname2101",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "cbb2d430-3e75-4c9e-a331-8fd26bbb04f7"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowlessprivilegedsites_iz_partname2101_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "313f9a54-e552-4c7a-91e4-e33d428bf0cf",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowlessprivilegedsites_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "9626c90c-2f62-460e-86c8-b6653ad69b2a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "124"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonedonotrunantimalwareagainstactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "455f4100-3dd4-4f7e-a38e-752c2ae54d92"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonedonotrunantimalwareagainstactivexcontrols_iz_partname270c",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "ceab1038-17a6-4f2c-9cdb-81c564e5d1aa"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonedonotrunantimalwareagainstactivexcontrols_iz_partname270c_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "e4a7e1d4-976f-4864-8381-f2e9c6762515",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonedonotrunantimalwareagainstactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f75bd4d6-1256-46b5-9473-a9fb93d4063a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "125"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszoneinitializeandscriptactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ef3cc6c0-604d-4c6d-9863-4bc2196b6fd4"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszoneinitializeandscriptactivexcontrols_iz_partname1201",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "f397e318-87a2-45b6-908a-62dbaa6d8bb6"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszoneinitializeandscriptactivexcontrols_iz_partname1201_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "db7a67cc-7f8a-44b1-964b-d4d41f0483eb",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszoneinitializeandscriptactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "286302f0-af95-46c7-896d-22a30f5274e9",
            "useTemplateDefault": false
          }
        }
      },
      "id": "126"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonejavapermissions",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "33491dd6-c0ac-42a0-8cfa-68ee914e1975"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonejavapermissions_iz_partname1c00",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "7f309422-9ef2-488d-b6b6-b40747526166"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonejavapermissions_iz_partname1c00_65536",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "98d844de-ee1d-4d25-8224-ecef906a1255",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonejavapermissions_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d79929fa-ff0b-46b4-99a4-1aebccb4f315",
            "useTemplateDefault": false
          }
        }
      },
      "id": "127"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_includeallnetworkpaths",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "6098ac62-02c7-4cfb-92cc-bdb0e551da7a"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_includeallnetworkpaths_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "ce8c747d-46f1-4497-9702-7b0f0c475f96",
            "useTemplateDefault": false
          }
        }
      },
      "id": "128"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_allowcertificateaddressmismatchwarning",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "bfc2469a-3d4f-463a-ab7c-45876156a9ab"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_allowcertificateaddressmismatchwarning_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "e26cdaaa-f4ca-4707-93e3-53d6cd39d9ba",
            "useTemplateDefault": false
          }
        }
      },
      "id": "129"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_disableignoringcertificateerrors",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "066c07fb-49f6-44ee-ae27-3bf411dd9a11"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_disableignoringcertificateerrors_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "65273000-e7ea-4529-a261-e6092b617720",
            "useTemplateDefault": false
          }
        }
      },
      "id": "130"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_removerunthistimebuttonforoutdatedactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c4261d56-8c13-45a0-856b-7944ecf00c34"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_removerunthistimebuttonforoutdatedactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2b2b12a8-72aa-4c52-aa0a-828c1bf97546",
            "useTemplateDefault": false
          }
        }
      },
      "id": "131"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_donotblockoutdatedactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f1858514-baca-46d1-b52f-82aa6cadb7fe"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_donotblockoutdatedactivexcontrols_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f986b9c4-ed24-42aa-b020-5899bdfed561",
            "useTemplateDefault": false
          }
        }
      },
      "id": "132"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_consistentmimehandlinginternetexplorerprocesses",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "cdc304e6-0f5c-4c62-b6dd-ec036fa8aee5"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_consistentmimehandlinginternetexplorerprocesses_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a9771bfa-6da2-4129-b386-2c8f90cb5524",
            "useTemplateDefault": false
          }
        }
      },
      "id": "133"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_mimesniffingsafetyfeatureinternetexplorerprocesses",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "d0d412e9-9d5a-42a0-9229-9eb6d6ec63e1"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_mimesniffingsafetyfeatureinternetexplorerprocesses_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "6d89e5a5-cb1e-4950-bdfa-6ad217686baf",
            "useTemplateDefault": false
          }
        }
      },
      "id": "134"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_mkprotocolsecurityrestrictioninternetexplorerprocesses",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9822f52b-ef59-4b0c-b6c8-f81d69e6dac1"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_mkprotocolsecurityrestrictioninternetexplorerprocesses_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "df16e893-18a9-40c0-8dbb-a9fb8ac28e85",
            "useTemplateDefault": false
          }
        }
      },
      "id": "135"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_notificationbarinternetexplorerprocesses",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c7bfcc02-e667-418f-93c6-9e0064273d9e"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_notificationbarinternetexplorerprocesses_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4099f2ef-8fe3-4191-8e5f-296ee1645dbd",
            "useTemplateDefault": false
          }
        }
      },
      "id": "136"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_protectionfromzoneelevationinternetexplorerprocesses",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "8267f965-3f44-4a1c-b488-9ba35129586e"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_protectionfromzoneelevationinternetexplorerprocesses_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "9ca63dcf-6138-41df-b6dd-08c9e925b619",
            "useTemplateDefault": false
          }
        }
      },
      "id": "137"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictactivexinstallinternetexplorerprocesses",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "1dacd424-efbf-4893-b35e-b8cbdf8bb89f"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictactivexinstallinternetexplorerprocesses_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "e0c57cbd-032a-450c-98d8-5e6e00b6086a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "138"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_restrictfiledownloadinternetexplorerprocesses",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "8bb2da57-5a37-4311-ab6e-2dabbe43b5fb"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_restrictfiledownloadinternetexplorerprocesses_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "af1118fb-d0a3-47a0-803b-9f63d7365f73",
            "useTemplateDefault": false
          }
        }
      },
      "id": "139"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_scriptedwindowsecurityrestrictionsinternetexplorerprocesses",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0432b17c-68f2-4710-94b8-3497efb2e67e"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_scriptedwindowsecurityrestrictionsinternetexplorerprocesses_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "33bf90cc-5d84-473b-8448-79da7d10b6d0",
            "useTemplateDefault": false
          }
        }
      },
      "id": "140"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_allowfallbacktossl3",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9aa8291a-b322-4def-bf16-55b111ad5fd8"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_allowfallbacktossl3_advanced_enablessl3fallbackoptions",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "b5153ee9-65a5-4ee2-8d07-9473fad5a758"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_allowfallbacktossl3_advanced_enablessl3fallbackoptions_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "3426a40c-b728-438b-b754-803480809d82",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_allowfallbacktossl3_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f93fb9f3-0a47-45b4-b1b9-8ff893245051",
            "useTemplateDefault": false
          }
        }
      },
      "id": "141"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_disablebypassofsmartscreenwarnings",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c5e7b1e7-85c1-4543-818e-07345972af11"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_disablebypassofsmartscreenwarnings_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2ce49fc2-a220-43b4-b86a-1241166ff227",
            "useTemplateDefault": false
          }
        }
      },
      "id": "142"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_disablebypassofsmartscreenwarningsaboutuncommonfiles",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f1e79abe-3004-4a83-bccb-a67e05b103a5"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_disablebypassofsmartscreenwarningsaboutuncommonfiles_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d8b00068-c20a-4593-bdb3-e5cf34206a44",
            "useTemplateDefault": false
          }
        }
      },
      "id": "143"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_preventmanagingsmartscreenfilter",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "90a0dd5e-66f1-45e7-a489-234f001e9d44"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_preventmanagingsmartscreenfilter_ie9safetyfilteroptions",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "77225329-11ee-4e66-a2b2-2cea33911946"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_internetexplorer_preventmanagingsmartscreenfilter_ie9safetyfilteroptions_1",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "35463b26-6fc1-4f0c-83d1-880dfd1dc62b",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_internetexplorer_preventmanagingsmartscreenfilter_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "222b48ba-7b65-41d1-9df7-31a980319a33",
            "useTemplateDefault": false
          }
        }
      },
      "id": "144"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_preventperuserinstallationofactivexcontrols",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "b9c0e207-8aea-4da3-8955-6e851eac9e9d"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_preventperuserinstallationofactivexcontrols_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2e4c7aff-e926-4749-9556-d388b8e0422a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "145"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_donotallowuserstoaddsites",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "edcda89b-a9b7-4679-9167-5b7a12a6da72"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_donotallowuserstoaddsites_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "3bcd3a0d-939f-427a-9239-6c9e99bc512c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "146"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_donotallowuserstochangepolicies",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ffc9627d-48c8-4896-a146-99acf76ae041"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_donotallowuserstochangepolicies_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c42f59a1-c148-4a3b-9a4d-cc0463aa184d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "147"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_securityzonesuseonlymachinesettings",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "694b71db-f360-40d0-ba4e-bcf78f703b32"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_securityzonesuseonlymachinesettings_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "009d0a17-856a-4d81-bd0f-bb9d76a97091",
            "useTemplateDefault": false
          }
        }
      },
      "id": "148"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_specifyuseofactivexinstallerservice",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "71a43eae-31d8-42f0-ad34-c410eea941ec"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_specifyuseofactivexinstallerservice_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d78b9959-3ab2-4d28-9ce4-e4688275534e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "149"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_disablecrashdetection",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "602521cd-080c-49b2-ab47-9ff884fe113b"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_disablecrashdetection_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f29dd58c-3466-4248-95c8-65d4cdc1a146",
            "useTemplateDefault": false
          }
        }
      },
      "id": "150"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_disablesecuritysettingscheck",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "8bb53e95-5d66-41bd-9f69-25f6eb1d596a"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_disablesecuritysettingscheck_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "373d7a60-1612-4992-8396-a34fac21854f",
            "useTemplateDefault": false
          }
        }
      },
      "id": "151"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "user_vendor_msft_policy_config_internetexplorer_allowautocomplete",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9ddcbf3f-db2c-4e54-bade-68ab3cf49284"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "user_vendor_msft_policy_config_internetexplorer_allowautocomplete_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "0b5d585a-7504-4265-9032-5181aab04ec9",
            "useTemplateDefault": false
          }
        }
      },
      "id": "152"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableblockatfirstseen",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "25964f56-42f0-4a8f-8634-8661efa1183e"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableblockatfirstseen_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "fbb207a9-f8f4-47b6-bf6a-043c90e405d6",
            "useTemplateDefault": false
          }
        }
      },
      "id": "153"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_realtimeprotection_disablescanonrealtimeenable",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "e2fb44b5-8010-48a8-bf02-39a346da7476"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_realtimeprotection_disablescanonrealtimeenable_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "6ace25a1-04a1-4660-8a0a-519f3feaa69d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "154"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disablepackedexescanning",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ab9c8e12-0db5-454a-8c65-f50882ea360e"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disablepackedexescanning_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "8138a74a-1124-4687-a02d-a85b0ee94f39",
            "useTemplateDefault": false
          }
        }
      },
      "id": "155"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableroutinelytakingaction",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "fb94855b-49a3-43e5-b542-a0fb47f90293"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableroutinelytakingaction_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "11a14bfc-6fbd-4019-8fcd-8462138b6847",
            "useTemplateDefault": false
          }
        }
      },
      "id": "156"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotedesktopservices_donotallowpasswordsaving",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "b3e2557b-3eda-486d-834b-19725f5001cf"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remotedesktopservices_donotallowpasswordsaving_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "880c4baa-d518-4e37-b8c3-d4d4a6736700",
            "useTemplateDefault": false
          }
        }
      },
      "id": "157"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotedesktopservices_donotallowdriveredirection",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "fab6de46-bbae-4bdc-a3e2-64a697805da6"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remotedesktopservices_donotallowdriveredirection_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a47d5ae9-b910-4f86-81ec-1ea269b41d5c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "158"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotedesktopservices_promptforpassworduponconnection",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "03e5058a-7d2a-4630-9e76-d131e87fde68"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remotedesktopservices_promptforpassworduponconnection_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "8663e834-3067-424a-9883-12704e0b4de4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "159"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotedesktopservices_requiresecurerpccommunication",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "93cd8906-a354-4f73-9856-03e99919c7ef"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remotedesktopservices_requiresecurerpccommunication_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5e5b8f87-d95e-4a81-a9a7-71e82574773a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "160"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "135561ca-4d15-4cbe-89b2-97d4c5753e3b"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_ts_encryption_level",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "6959d4d0-2abc-4e38-a1a8-5a2414f83438"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_ts_encryption_level_3",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "7b1fd837-a300-4093-b18e-516e06856e80",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "785ef666-a53f-4fe2-9fc8-fd7496cc2253",
            "useTemplateDefault": false
          }
        }
      },
      "id": "161"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_internetexplorer_disableenclosuredownloading",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "e4eb8bc8-c1ce-42ee-b538-fb329995cdaa"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_internetexplorer_disableenclosuredownloading_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5e0e3ce4-2552-4d5f-9334-1aa6ddfe763a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "162"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_windowslogon_allowautomaticrestartsignon",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "59923e6a-8be8-487b-be33-d16945019f3e"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_windowslogon_allowautomaticrestartsignon_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4d5c053f-ce79-43a6-99cf-5a40f0f40951",
            "useTemplateDefault": false
          }
        }
      },
      "id": "163"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "3ee8bd84-8aa3-4a15-acaf-4a7f07beb3d9"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging_enablescriptblockinvocationlogging",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "4249bdec-abe4-44d6-bd4a-de2767d32221"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging_enablescriptblockinvocationlogging_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "5ad1739f-dfbe-4ddb-bd50-1f6b4cdeb7c5",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c466d0b7-2b9d-46ab-a83d-828f7ed03a8a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "164"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_client",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "19dfe120-a960-4b84-b70b-ad78cec29dc0"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_client_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a2150c05-0aa9-4268-b275-52609c4c9a18",
            "useTemplateDefault": false
          }
        }
      },
      "id": "165"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_client",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "39d8d798-d8a6-4691-afc8-b984af5f946d"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_client_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5d365938-5333-478f-8a9b-4c22b0494e40",
            "useTemplateDefault": false
          }
        }
      },
      "id": "166"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotemanagement_disallowdigestauthentication",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ce490457-fbd7-45fa-8660-1574ee2581c5"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remotemanagement_disallowdigestauthentication_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d2043e8c-e101-4b61-821b-d4679aa67aa7",
            "useTemplateDefault": false
          }
        }
      },
      "id": "167"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_service",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "156410d6-a45a-42b5-80e8-a9013dc9e0ca"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_service_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5d31fd96-97fc-4f72-bbe2-a7bd08847bf9",
            "useTemplateDefault": false
          }
        }
      },
      "id": "168"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_service",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "40e064d8-7217-462a-921d-99a1061d00ac"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_service_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "e75dbcbd-0ebd-44d2-938e-e53a9d7e26b5",
            "useTemplateDefault": false
          }
        }
      },
      "id": "169"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_remotemanagement_disallowstoringofrunascredentials",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "3fadebc5-93a1-430c-8ea6-10b32da78d67"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_remotemanagement_disallowstoringofrunascredentials_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "3decddb5-ef46-4f45-8c3b-bdc68a0d94bc",
            "useTemplateDefault": false
          }
        }
      },
      "id": "170"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_accountlogon_auditcredentialvalidation",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "dc9e4281-73cc-4b06-acbc-c1a9c9712e03"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_accountlogon_auditcredentialvalidation_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "9cacc02a-5a9c-4602-9d1f-90d0e9248fab",
            "useTemplateDefault": false
          }
        }
      },
      "id": "171"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditaccountlockout",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "d806ba78-3597-42c8-a4b4-cf614e922fdd"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditaccountlockout_2",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "68472ccc-92fa-460f-8f47-6c72736ead3c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "172"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditgroupmembership",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "b09a26f2-df25-414e-b6cd-8a258cb5529c"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditgroupmembership_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "0b31c6e9-727e-452b-9e03-867cd5b2ea04",
            "useTemplateDefault": false
          }
        }
      },
      "id": "173"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditlogon",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "378a7698-72ea-4698-89bd-ea896ac7c60f"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditlogon_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "611981b3-ace0-4095-bfa4-0eef0cd324a7",
            "useTemplateDefault": false
          }
        }
      },
      "id": "174"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_policychange_auditauthenticationpolicychange",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "4efc1402-689c-4fcd-8edb-e90e2817cff6"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_policychange_auditauthenticationpolicychange_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4b329450-ab02-4afd-a796-1fb459cdfbba",
            "useTemplateDefault": false
          }
        }
      },
      "id": "175"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_policychange_auditpolicychange",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "244508d9-f362-4906-a8d7-35316b2309d3"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_policychange_auditpolicychange_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "fa2e7b55-b9fa-4405-a68f-cc8031dfed5c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "176"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_objectaccess_auditfileshare",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "dcf144ca-f84c-4a41-bcb5-834b72866506"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_objectaccess_auditfileshare_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "587dcef6-fb38-4368-8ae8-bd6577c46947",
            "useTemplateDefault": false
          }
        }
      },
      "id": "177"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditotherlogonlogoffevents",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "1e95b34a-2462-4f69-ab30-ce0edb19cb6a"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditotherlogonlogoffevents_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "00d09d39-33e0-4206-95d0-be578e19bc15",
            "useTemplateDefault": false
          }
        }
      },
      "id": "178"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_accountmanagement_auditsecuritygroupmanagement",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "2a2e49e2-5989-4d49-95bd-cfe5282a0524"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_accountmanagement_auditsecuritygroupmanagement_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "baa6e87d-b801-445e-b820-950278e34353",
            "useTemplateDefault": false
          }
        }
      },
      "id": "179"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_system_auditsecuritysystemextension",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "d313d392-02c2-4ccb-9e10-8d9935a78222"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_system_auditsecuritysystemextension_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f4590ec1-350d-4aee-8718-d0f37c56347a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "180"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditspeciallogon",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0054990d-379d-4343-b777-f21bbb70597d"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditspeciallogon_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5b7bb4b7-f761-4b6e-81c9-c1fc2742c483",
            "useTemplateDefault": false
          }
        }
      },
      "id": "181"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_accountmanagement_audituseraccountmanagement",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0db04fff-a80e-4bf8-b898-51e35ab5c3a7"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_accountmanagement_audituseraccountmanagement_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "ecd08d2b-e997-42f6-ac82-6d4342f2c6fc",
            "useTemplateDefault": false
          }
        }
      },
      "id": "182"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_detailedtracking_auditpnpactivity",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "8a908e87-fed9-4417-a1d5-079b7d77a005"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_detailedtracking_auditpnpactivity_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "79da9396-611d-4aff-a551-bdba591c08f5",
            "useTemplateDefault": false
          }
        }
      },
      "id": "183"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_detailedtracking_auditprocesscreation",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c9b9abb0-325d-4013-a0b9-d7006cd1b9fa"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_detailedtracking_auditprocesscreation_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "91722f14-b8d7-4036-8d7d-ea859e2e4a93",
            "useTemplateDefault": false
          }
        }
      },
      "id": "184"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_objectaccess_auditdetailedfileshare",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "948d2bee-b8d6-48f5-b3e4-ddd506aa2d4d"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_objectaccess_auditdetailedfileshare_2",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "e585b907-cbd7-4522-9768-1bad33ec788c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "185"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_objectaccess_auditotherobjectaccessevents",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "154e7c5e-2391-4de3-b6d2-1b1ac250e32a"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_objectaccess_auditotherobjectaccessevents_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f9647747-844c-4d2c-9e1c-ee3179431b3d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "186"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_objectaccess_auditremovablestorage",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "47007fa1-449f-465a-82f8-a5eb4184b8b4"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_objectaccess_auditremovablestorage_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4ad4e188-e43b-4841-9fd4-30f1fa116574",
            "useTemplateDefault": false
          }
        }
      },
      "id": "187"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_policychange_auditmpssvcrulelevelpolicychange",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c16994d2-a8a3-4a77-8c1b-63efd0ed51ac"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_policychange_auditmpssvcrulelevelpolicychange_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "0f169859-c071-409a-a73f-b1cd35b51d3d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "188"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_policychange_auditotherpolicychangeevents",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "422511ed-5047-4021-b47a-a1f4b4b4fc8b"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_policychange_auditotherpolicychangeevents_2",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2048b081-4a17-4dfc-84e5-44b5ed2e6fb4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "189"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_privilegeuse_auditsensitiveprivilegeuse",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "a803d584-24f6-4ebc-b6d8-14332f8f6dc5"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_privilegeuse_auditsensitiveprivilegeuse_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "3d27afec-e355-4583-9778-227d4774830d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "190"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_system_auditothersystemevents",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "51516421-c4e2-4a0c-a2e7-515ed2a2ae95"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_system_auditothersystemevents_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "69978b8d-a8ec-469a-83ff-388f8ee4eded",
            "useTemplateDefault": false
          }
        }
      },
      "id": "191"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_system_auditsecuritystatechange",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c3ff9e54-e336-420a-850c-29b7ec7f55e0"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_system_auditsecuritystatechange_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "396c6dfe-514e-43a8-a6d4-dcc738dbb710",
            "useTemplateDefault": false
          }
        }
      },
      "id": "192"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_audit_system_auditsystemintegrity",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "4e60a1bf-e9cf-44a1-8360-6273e3f03c58"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_audit_system_auditsystemintegrity_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5c494b10-2e0d-48b6-95d4-60ab7e6a5777",
            "useTemplateDefault": false
          }
        }
      },
      "id": "193"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_dataprotection_allowdirectmemoryaccess",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "78d98619-3065-4a73-bda1-a3d74d6fbe52"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_dataprotection_allowdirectmemoryaccess_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a49d68ef-18a8-4087-8949-e929dd1227c0",
            "useTemplateDefault": false
          }
        }
      },
      "id": "194"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_allowarchivescanning",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "3002591e-bdd2-48b0-8fc9-97944b68eb86"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_allowarchivescanning_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d4c23dea-bb99-49da-b0ca-4ac2d09c8305",
            "useTemplateDefault": false
          }
        }
      },
      "id": "195"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_allowbehaviormonitoring",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "5a988de3-4090-40f4-b373-83cbd8fc3633"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_allowbehaviormonitoring_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "741546ae-f93b-45a1-a449-228ca3d0cd17",
            "useTemplateDefault": false
          }
        }
      },
      "id": "196"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_allowcloudprotection",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "b0298ce5-1147-4bcb-9744-cf2034b77ece"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_allowcloudprotection_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a5604d1e-fa47-49d4-9c44-109f036ac744",
            "useTemplateDefault": false
          }
        }
      },
      "id": "197"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_allowfullscanremovabledrivescanning",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "5864d708-12e9-4542-bb82-26a2c6a22423"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_allowfullscanremovabledrivescanning_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4a00449c-872d-48c7-9066-91260673100c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "198"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_allowonaccessprotection",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "06bfb0ae-9fd1-4ffb-869e-02ef1b192d51"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_allowonaccessprotection_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a4dc4883-603b-4eed-87f1-1c5b9087a366",
            "useTemplateDefault": false
          }
        }
      },
      "id": "199"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_allowrealtimemonitoring",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "20d0a58c-5e56-4da5-8e13-311651f8e224"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_allowrealtimemonitoring_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "8dfeff00-7c58-415b-83fd-7e3161a4628e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "200"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_allowioavprotection",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "cf23556b-07ac-4ac8-8a4e-d1ba9c0cafe0"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_allowioavprotection_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "3d7513f0-8ac5-436a-a122-4b35902ef62f",
            "useTemplateDefault": false
          }
        }
      },
      "id": "201"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_allowscriptscanning",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ffc85a57-814b-4548-b812-60f5f316d6b0"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_allowscriptscanning_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "491e428f-d2af-4a6f-b347-c8ea0f5d9f2d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "202"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "55754f28-2701-4c04-84e9-522c85d07d92"
        },
        "groupSettingCollectionValue": [
          {
            "settingValueTemplateReference": null,
            "children": [
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockexecutionofpotentiallyobfuscatedscripts",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockexecutionofpotentiallyobfuscatedscripts_block",
                  "settingValueTemplateReference": null
                }
              },
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficecommunicationappfromcreatingchildprocesses",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficecommunicationappfromcreatingchildprocesses_block",
                  "settingValueTemplateReference": null
                }
              },
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockallofficeapplicationsfromcreatingchildprocesses",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockallofficeapplicationsfromcreatingchildprocesses_block",
                  "settingValueTemplateReference": null
                }
              },
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockwin32apicallsfromofficemacros",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockwin32apicallsfromofficemacros_block",
                  "settingValueTemplateReference": null
                }
              },
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockjavascriptorvbscriptfromlaunchingdownloadedexecutablecontent",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockjavascriptorvbscriptfromlaunchingdownloadedexecutablecontent_block",
                  "settingValueTemplateReference": null
                }
              },
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockuntrustedunsignedprocessesthatrunfromusb",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockuntrustedunsignedprocessesthatrunfromusb_block",
                  "settingValueTemplateReference": null
                }
              },
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockadobereaderfromcreatingchildprocesses",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockadobereaderfromcreatingchildprocesses_block",
                  "settingValueTemplateReference": null
                }
              },
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockcredentialstealingfromwindowslocalsecurityauthoritysubsystem",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockcredentialstealingfromwindowslocalsecurityauthoritysubsystem_block",
                  "settingValueTemplateReference": null
                }
              },
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficeapplicationsfrominjectingcodeintootherprocesses",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficeapplicationsfrominjectingcodeintootherprocesses_block",
                  "settingValueTemplateReference": null
                }
              },
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficeapplicationsfromcreatingexecutablecontent",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficeapplicationsfromcreatingexecutablecontent_block",
                  "settingValueTemplateReference": null
                }
              },
              {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                "settingDefinitionId": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockexecutablecontentfromemailclientandwebmail",
                "settingInstanceTemplateReference": null,
                "choiceSettingValue": {
                  "children": [],
                  "value": "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockexecutablecontentfromemailclientandwebmail_block",
                  "settingValueTemplateReference": null
                }
              }
            ]
          }
        ]
      },
      "id": "203"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_cloudblocklevel",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "1ab7e650-f260-4772-ae68-ce4dbc8c5b68"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_cloudblocklevel_2",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "511ad546-e0a3-4f95-9f04-0a1a33c0c3d4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "204"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_cloudextendedtimeout",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ff560864-55c4-437d-9789-a58d8ae3cc7e"
        },
        "simpleSettingValue": {
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
          "value": 50,
          "settingValueTemplateReference": {
            "settingValueTemplateId": "1bfe1ada-4a8d-4008-8a74-c1eaf0d4491d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "205"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_defender_configuration_disablelocaladminmerge",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "15d685f6-7ffe-46bb-b9c1-0e829ad84915"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_defender_configuration_disablelocaladminmerge_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "87f4a3e2-e40a-4294-bbd2-d34f01e85f35",
            "useTemplateDefault": false
          }
        }
      },
      "id": "206"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_defender_configuration_enablefilehashcomputation",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0dc378f5-a198-4a42-80e8-75af8e8b286f"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_defender_configuration_enablefilehashcomputation_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "46b46a1e-9452-417c-9a60-e0bbd6e00d53",
            "useTemplateDefault": false
          }
        }
      },
      "id": "207"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_enablenetworkprotection",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "154571c7-86a5-4352-bd15-aaceecfbb602"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_enablenetworkprotection_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f48766e0-9529-4d20-9834-b96e1af90ded",
            "useTemplateDefault": false
          }
        }
      },
      "id": "208"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_defender_configuration_hideexclusionsfromlocaladmins",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "25815dc7-b95e-4dc7-8b64-5c5fecb19731"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_defender_configuration_hideexclusionsfromlocaladmins_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c07e8b47-efbf-4242-b8bd-539287103818",
            "useTemplateDefault": false
          }
        }
      },
      "id": "209"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_puaprotection",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "8e3b779d-a5bb-41c5-80c2-555390074f87"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_puaprotection_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "87022f0a-33d7-475e-b3ba-d19348c1d0a4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "210"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_realtimescandirection",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "7142d58a-04d0-4c1d-a9f4-c668f33c5ace"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_realtimescandirection_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "e77a3d5a-90c1-4a0a-880c-44a410e4baff",
            "useTemplateDefault": false
          }
        }
      },
      "id": "211"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_defender_submitsamplesconsent",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "fc5849c3-b3b0-4899-9d65-3109558530d7"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_defender_submitsamplesconsent_3",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "156820b1-192d-4c58-a143-0150c6398522",
            "useTemplateDefault": false
          }
        }
      },
      "id": "212"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_deviceguard_configuresystemguardlaunch",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "6b52aa2d-49f4-4bf0-a71c-7e5c41a393b2"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_deviceguard_configuresystemguardlaunch_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "50d2362b-d428-4242-acd5-5907779dc500",
            "useTemplateDefault": false
          }
        }
      },
      "id": "213"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_deviceguard_lsacfgflags",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "df5e8eb6-5e18-40dc-b550-8dc063c456f0"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_deviceguard_lsacfgflags_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "18184526-f1c9-49e1-8ec8-d920bf156ad0",
            "useTemplateDefault": false
          }
        }
      },
      "id": "214"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_deviceguard_enablevirtualizationbasedsecurity",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "2af120f2-a63a-49f4-a4d8-555f15301ea0"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_deviceguard_enablevirtualizationbasedsecurity_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "3df81861-70c6-4376-aa5c-cd33a2d48f7d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "215"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_deviceguard_requireplatformsecurityfeatures",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "20b92a03-ce72-473b-b469-08ff6135b7d4"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_deviceguard_requireplatformsecurityfeatures_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "07bbf118-c710-4ba2-bcf1-6720c5c5494b",
            "useTemplateDefault": false
          }
        }
      },
      "id": "216"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_devicelock_devicepasswordenabled",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0825c176-3150-45bd-b2bc-b444d9448922"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_devicelock_mindevicepasswordlength",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "9b9bbc4c-e60c-4e93-a1af-b3c092bb7167"
              },
              "simpleSettingValue": {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                "value": 14,
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "21981202-313e-4a7d-8821-89998d2a4795",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_devicelock_devicepasswordhistory",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "954b2312-eab2-4929-af4d-bf49c22c8dc2"
              },
              "simpleSettingValue": {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                "value": 24,
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "d0eb7aa7-f6d6-4303-ad9c-7bc4e0677cfd",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_devicelock_devicepasswordenabled_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "a6682e15-1214-4259-9bef-e5220327d24f",
            "useTemplateDefault": false
          }
        }
      },
      "id": "217"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_dmaguard_deviceenumerationpolicy",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "d108f29d-2187-42c8-b06d-1558185cd88b"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_dmaguard_deviceenumerationpolicy_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f5ab26d8-4eef-4f4b-9c5a-cd5f37ec9b6a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "218"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "user_vendor_msft_policy_config_experience_allowwindowsspotlight",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "e413c297-48d9-4906-af61-bc0063112e4a"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_experience_allowwindowsconsumerfeatures",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "0f210d89-9e13-4a44-84bd-efe59e4ed350"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_experience_allowwindowsconsumerfeatures_1",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "544dd809-88e3-4ebc-b4ef-f87b655e5fe0",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "user_vendor_msft_policy_config_experience_allowthirdpartysuggestionsinwindowsspotlight",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "043a43be-7160-491a-8b65-04eda1c7cd78"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "user_vendor_msft_policy_config_experience_allowthirdpartysuggestionsinwindowsspotlight_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "d2bd940f-7b2b-47b3-a041-d29a913b9d53",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "user_vendor_msft_policy_config_experience_allowwindowsspotlight_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "424422ed-1a5f-44c6-af94-6a10b6d6b11e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "219"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "vendor_msft_firewall_mdmstore_domainprofile_enablefirewall",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "f0d70bbf-6a6e-4832-822a-fd6bc34903b2"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_domainprofile_enablelogsuccessconnections",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "52b34275-d760-4160-a030-f197c1606ce4"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_domainprofile_enablelogsuccessconnections_true",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "ee1544db-094d-48e0-a04e-aafe98112c22",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_domainprofile_defaultoutboundaction",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "34bedb52-9ca9-4fef-924c-1258fd657756"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_domainprofile_defaultoutboundaction_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "1e480fbb-fd64-4b76-ad0b-209fe5560ca1",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_domainprofile_disableinboundnotifications",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "ebcfc80f-5a5c-4005-9720-38a77280bed5"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_domainprofile_disableinboundnotifications_true",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "b55023fd-e7bc-4cad-92e7-b1b9a06f6fd5",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_domainprofile_enablelogdroppedpackets",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "eb5baf13-91bd-4842-8e8c-5680c20a3063"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_domainprofile_enablelogdroppedpackets_true",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "448fe5b7-9ffe-43ea-84aa-a973b66bda99",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_domainprofile_logmaxfilesize",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "6a069b67-5b59-4bf6-97b4-94169b9357f2"
              },
              "simpleSettingValue": {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                "value": 16384,
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "00911f06-c776-40e3-b09e-113e6e7ffd68",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_domainprofile_defaultinboundaction",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "55f13759-6a78-44b5-b92c-c35c3edf8eb4"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_domainprofile_defaultinboundaction_1",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "f2c34805-69f8-4662-9160-07d8e7b2fe5c",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "vendor_msft_firewall_mdmstore_domainprofile_enablefirewall_true",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c4745e21-9fe4-44db-8b72-c4c1f413b6cd",
            "useTemplateDefault": false
          }
        }
      },
      "id": "220"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "vendor_msft_firewall_mdmstore_privateprofile_enablefirewall",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "79884bf9-a065-4515-9687-6afb9945ac54"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_privateprofile_logmaxfilesize",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "bffed6c8-f64e-48fb-b81e-62b5595cdb15"
              },
              "simpleSettingValue": {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                "value": 16384,
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "aad037a5-9b1e-409a-a0fd-4cae2c204f5d",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_privateprofile_defaultinboundaction",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "53f203d9-7e72-4402-b238-2eec1166443a"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_privateprofile_defaultinboundaction_1",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "337773f8-ded9-4a4a-abef-03859dfe25fb",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_privateprofile_enablelogsuccessconnections",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "d4e3d1e0-ddfa-40fc-9fd8-a4bf739d69e2"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_privateprofile_enablelogsuccessconnections_true",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "2475c940-377e-4955-8549-46aa3ac7e508",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_privateprofile_enablelogdroppedpackets",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "1c90fdc0-9ffe-4bea-968a-d8bbe017e8ad"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_privateprofile_enablelogdroppedpackets_true",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "68efffb8-eab1-443e-8839-560f99596673",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_privateprofile_disableinboundnotifications",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "1da9e03e-49d1-4e2f-8c4a-53ce5032f874"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_privateprofile_disableinboundnotifications_true",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "dc2ea7b7-6860-4ea5-a969-3985cd15411d",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_privateprofile_defaultoutboundaction",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "aa7c29b5-1cc6-41be-afd5-947fc151b133"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_privateprofile_defaultoutboundaction_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "8553e88c-f77e-4fdc-bf1f-231adee2c3db",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "vendor_msft_firewall_mdmstore_privateprofile_enablefirewall_true",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "200ec79b-fdb9-4eaa-bdeb-a988c0b20c4a",
            "useTemplateDefault": false
          }
        }
      },
      "id": "221"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "vendor_msft_firewall_mdmstore_publicprofile_enablefirewall",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ba1f210a-e5d1-47ba-b9f5-221685721a35"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_publicprofile_logmaxfilesize",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "68ec1725-5d9b-408f-a12d-5d72ac81dc8c"
              },
              "simpleSettingValue": {
                "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                "value": 16384,
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "426195ab-b4ef-42e2-9e60-dfbd7c452550",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_publicprofile_defaultoutboundaction",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "86f09d09-0242-47ad-865e-3e93e61b0e25"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_publicprofile_defaultoutboundaction_0",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "69ce6a32-139a-4ac7-85bf-4aff19f4e99b",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_publicprofile_disableinboundnotifications",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "5d09938c-6b58-4f68-ab3b-80ffd1338dc0"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_publicprofile_disableinboundnotifications_true",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "09b6dda7-ee47-4318-aa9a-26f04b792144",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_publicprofile_defaultinboundaction",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "f6c2e0a0-61c6-4918-9a66-972f6c017551"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_publicprofile_defaultinboundaction_1",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "b4f89958-1553-405d-8c21-46ac4196dbbc",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_publicprofile_allowlocalpolicymerge",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "9c0bcc66-ae37-4b16-8d21-cd849a128097"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_publicprofile_allowlocalpolicymerge_false",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "502c81b5-d3ce-493e-80a2-01db2b6d0aa7",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_publicprofile_enablelogsuccessconnections",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "a1db5255-6f13-4ac2-9b89-bfb9fbfa52b2"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_publicprofile_enablelogsuccessconnections_true",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "47ee3896-0ada-4c77-beaa-011d28c89aea",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_publicprofile_allowlocalipsecpolicymerge",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "171ef806-b08b-4a47-b25b-dcce319a680a"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_publicprofile_allowlocalipsecpolicymerge_false",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "107c10b7-d6ed-44bb-9350-38611ae5e1a0",
                  "useTemplateDefault": false
                }
              }
            },
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "vendor_msft_firewall_mdmstore_publicprofile_enablelogdroppedpackets",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "c87ed926-4455-4bec-8ef8-6f57b3be27a4"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "vendor_msft_firewall_mdmstore_publicprofile_enablelogdroppedpackets_true",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "f6dadd6d-4528-4fbb-be30-820720f940e5",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "vendor_msft_firewall_mdmstore_publicprofile_enablefirewall_true",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "dbaf8e0a-2963-4df4-9eb4-8e9dfaef7419",
            "useTemplateDefault": false
          }
        }
      },
      "id": "222"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_lanmanworkstation_enableinsecureguestlogons",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9fab9ea3-146c-4964-8751-dca7e5c97f20"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_lanmanworkstation_enableinsecureguestlogons_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c20bd9f5-ef91-48d2-9f1e-d0e2a92908c4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "223"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_limitlocalaccountuseofblankpasswordstoconsolelogononly",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c9c87138-f802-4646-bfa5-aec517edec82"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_limitlocalaccountuseofblankpasswordstoconsolelogononly_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5bce937a-6278-48f9-8f3e-ed5738931978",
            "useTemplateDefault": false
          }
        }
      },
      "id": "224"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_interactivelogon_machineinactivitylimit_v2",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "611e4505-252d-404b-8db0-c1733f4e3d9b"
        },
        "simpleSettingValue": {
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
          "value": 900,
          "settingValueTemplateReference": {
            "settingValueTemplateId": "b7557e4e-68c5-4883-ba42-06abb9234e83",
            "useTemplateDefault": false
          }
        }
      },
      "id": "225"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_interactivelogon_smartcardremovalbehavior",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "de3047f3-e412-42ba-8da7-81d8c3ad7f3a"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_interactivelogon_smartcardremovalbehavior_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4def35ad-1378-43b7-8598-e12a4af8fba0",
            "useTemplateDefault": false
          }
        }
      },
      "id": "226"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_digitallysigncommunicationsalways",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "56ac3d3b-9cd6-4cc4-9f85-0dfe81822b4a"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_digitallysigncommunicationsalways_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d413d6cd-aff2-4cfe-be8b-1eda2c41ce46",
            "useTemplateDefault": false
          }
        }
      },
      "id": "227"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_sendunencryptedpasswordtothirdpartysmbservers",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "5ad6a832-4d99-4e4e-9d9f-95a093eb84b9"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_sendunencryptedpasswordtothirdpartysmbservers_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "ec725671-6c2c-45dd-ae6e-402b9fccedd3",
            "useTemplateDefault": false
          }
        }
      },
      "id": "228"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkserver_digitallysigncommunicationsalways",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "e965121f-6bf0-429d-9fe2-a11f92f610e3"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkserver_digitallysigncommunicationsalways_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "b7341853-96e9-4135-8627-a3476802e06d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "229"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccounts",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ff7c42f5-1b27-481f-b3cd-643119474836"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccounts_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "213a7c3a-f697-4670-8ac4-a30c65814610",
            "useTemplateDefault": false
          }
        }
      },
      "id": "230"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccountsandshares",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9562eb5c-9f57-4ba8-9948-55cb515ea582"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccountsandshares_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "57979804-e230-4603-a3d7-d391abad5c57",
            "useTemplateDefault": false
          }
        }
      },
      "id": "231"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_restrictanonymousaccesstonamedpipesandshares",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "41a039cc-658e-4134-8eb5-0ddaed07f780"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_restrictanonymousaccesstonamedpipesandshares_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5752ca90-a31c-4be5-adb1-372ded888d41",
            "useTemplateDefault": false
          }
        }
      },
      "id": "232"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_restrictclientsallowedtomakeremotecallstosam",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "87019ae6-9fa6-488f-ab0a-8d98ee68ae78"
        },
        "simpleSettingValue": {
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
          "value": "O:BAG:BAD:(A;;RC;;;BA)",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "e61e4ecf-6c87-438b-84ba-9f5650a44a30",
            "useTemplateDefault": false
          }
        }
      },
      "id": "233"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_donotstorelanmanagerhashvalueonnextpasswordchange",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "2e5a830d-26c1-4329-9e38-b50dd71a1185"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_donotstorelanmanagerhashvalueonnextpasswordchange_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "663a9a8e-0dc7-4819-857a-f8717937d607",
            "useTemplateDefault": false
          }
        }
      },
      "id": "234"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_lanmanagerauthenticationlevel",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "b3d99eda-5367-4850-b14e-ccac8934e0f1"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_lanmanagerauthenticationlevel_5",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4f4595cb-4519-46b3-bb4d-8377e523325d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "235"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedclients",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "6aff9fdc-3d0f-49fa-b332-68058b0276f4"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedclients_537395200",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "920a8dae-937c-44db-8d42-363835a9fabd",
            "useTemplateDefault": false
          }
        }
      },
      "id": "236"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedservers",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9931e08b-f363-4f47-af2a-20e2776fdb7d"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedservers_537395200",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "6d54c356-e30f-4424-8f24-f4e0e6e448cb",
            "useTemplateDefault": false
          }
        }
      },
      "id": "237"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforadministrators",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "17a69d6d-43ff-4608-9044-1c936654b841"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforadministrators_2",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "9413cd9a-52a2-495d-9f76-a2cf76aa316b",
            "useTemplateDefault": false
          }
        }
      },
      "id": "238"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforstandardusers",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "243b6001-7cc2-4f2d-934b-ff6c64f880dd"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforstandardusers_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "f7578c9d-d7a7-4605-bbcf-8fe799100cf5",
            "useTemplateDefault": false
          }
        }
      },
      "id": "239"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_detectapplicationinstallationsandpromptforelevation",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "6b3ef788-370d-4ea8-b3c4-f2db192fc167"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_detectapplicationinstallationsandpromptforelevation_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "dcbbd1e7-8217-4246-b4a2-788d034e217e",
            "useTemplateDefault": false
          }
        }
      },
      "id": "240"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "8b6e385c-165a-4596-bcc8-afcd763183a2"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "13e770d8-0696-461f-a18c-2a83b17d26ee",
            "useTemplateDefault": false
          }
        }
      },
      "id": "241"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_runalladministratorsinadminapprovalmode",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "ed9ad07e-2c3c-4c2e-b8c3-4c1235356b73"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_runalladministratorsinadminapprovalmode_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "2849bf31-e42f-44fb-a201-6aed205b0c98",
            "useTemplateDefault": false
          }
        }
      },
      "id": "242"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_useadminapprovalmode",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9d0fea17-5d03-4922-b2e3-b4c9587720bb"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_useadminapprovalmode_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "58e2f919-f21d-4125-ba19-372f199a9a69",
            "useTemplateDefault": false
          }
        }
      },
      "id": "243"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_virtualizefileandregistrywritefailurestoperuserlocations",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "05db3521-d464-4634-9d9f-d41d4750be2b"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_virtualizefileandregistrywritefailurestoperuserlocations_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5eff6fb9-f4e4-4cf9-9b39-9af7ba31cc1c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "244"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_localsecurityauthority_configurelsaprotectedprocess",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0e2399af-53ce-43cc-9bdf-89dedd2d36d8"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_localsecurityauthority_configurelsaprotectedprocess_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "33f50379-43d4-4242-8f53-4020fa14648b",
            "useTemplateDefault": false
          }
        }
      },
      "id": "245"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_applicationmanagement_allowgamedvr",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "6fd9b16d-d62b-4152-84a3-1c17cd4d3221"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_applicationmanagement_allowgamedvr_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "4167ee45-5fc3-4a92-b5a7-ba5f3fca6d7b",
            "useTemplateDefault": false
          }
        }
      },
      "id": "246"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_applicationmanagement_msiallowusercontroloverinstall",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "e40efe0e-6bca-48e3-8a8c-c814005139bf"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_applicationmanagement_msiallowusercontroloverinstall_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "14cc40e9-0f88-4851-893e-59f0707a3dd9",
            "useTemplateDefault": false
          }
        }
      },
      "id": "247"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_applicationmanagement_msialwaysinstallwithelevatedprivileges",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c7a3cecb-db69-41c2-8573-c9154c3594c3"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_applicationmanagement_msialwaysinstallwithelevatedprivileges_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "c28c5889-dd9f-42e3-803d-e603bac30321",
            "useTemplateDefault": false
          }
        }
      },
      "id": "248"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpluginssetting",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "39ca112c-fc9c-4137-b5dd-2c225d866ac3"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpluginssetting_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "5b73269d-02d3-4f66-ac23-b37654127f92",
            "useTemplateDefault": false
          }
        }
      },
      "id": "249"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpluginssetting",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "3ac1e577-e8ca-4c68-800e-cc92deb47109"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpluginssetting_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "b229d2e4-1915-4040-9f0c-265f100e48ed",
            "useTemplateDefault": false
          }
        }
      },
      "id": "250"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_smartscreenenabled",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0223562f-a5b3-4aef-9d86-c2b79bde445f"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_smartscreenenabled_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "ef65d4de-0b6f-4b24-9342-b16e8d70950c",
            "useTemplateDefault": false
          }
        }
      },
      "id": "251"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverride",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "706b45d6-ff5a-4462-9810-80b71200f4af"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverride_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "956fbfd0-2cf5-447c-ae84-cbee34dfc4b4",
            "useTemplateDefault": false
          }
        }
      },
      "id": "252"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "d851ee14-4474-4dc0-8849-bf661a3f9f3c"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_sslversionmin",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "79ec329e-8f0e-43c1-b93b-85669d92d1d3"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_sslversionmin_tls1.2",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "eb667b77-7073-4739-8539-676bc0dd13e9",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "aae36bf9-f860-45fa-9b3d-fb692d613dac",
            "useTemplateDefault": false
          }
        }
      },
      "id": "253"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "d319e826-e7bb-4960-ac79-4b534dd2fc60"
        },
        "choiceSettingValue": {
          "children": [
            {
              "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
              "settingDefinitionId": "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_sslversionmin",
              "settingInstanceTemplateReference": {
                "settingInstanceTemplateId": "7ec6b1b9-43ce-46d5-87d6-b26839421bdd"
              },
              "choiceSettingValue": {
                "children": [],
                "value": "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_sslversionmin_tls1.2",
                "settingValueTemplateReference": {
                  "settingValueTemplateId": "d28884a3-1a76-4636-a234-eabd2c216ec9",
                  "useTemplateDefault": false
                }
              }
            }
          ],
          "value": "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "152e0ad7-5ddf-410f-8bfe-9981109291fa",
            "useTemplateDefault": false
          }
        }
      },
      "id": "254"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_privacy_letappsactivatewithvoiceabovelock",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "6570afff-de79-4003-8e72-35ec97844aec"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_privacy_letappsactivatewithvoiceabovelock_2",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "23d6f7d8-e6a8-4844-98d8-47154b2de2b1",
            "useTemplateDefault": false
          }
        }
      },
      "id": "255"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_search_allowindexingencryptedstoresoritems",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "69bf73c7-6f11-4870-98cc-2e8a56b6d4bf"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_search_allowindexingencryptedstoresoritems_0",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "e5cf1cc9-63b6-4140-b556-e6c6613dc72f",
            "useTemplateDefault": false
          }
        }
      },
      "id": "256"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_webthreatdefense_notifymalicious",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "36db3ab9-6ee1-4bbd-9bc8-674d2f6e84d4"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_webthreatdefense_notifymalicious_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "9a58754a-f976-45fc-b571-89f1d56bf19f",
            "useTemplateDefault": false
          }
        }
      },
      "id": "257"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_webthreatdefense_notifypasswordreuse",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "fcec3448-7796-4045-838b-4f847a717dee"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_webthreatdefense_notifypasswordreuse_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "66db896a-cb11-4324-a411-fd6ab22dce71",
            "useTemplateDefault": false
          }
        }
      },
      "id": "258"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_webthreatdefense_notifyunsafeapp",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "61ae95c7-17ab-4c16-9352-a51ec3c023b8"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_webthreatdefense_notifyunsafeapp_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "7a10ac14-99d6-4188-8059-9b9db8e2b9b6",
            "useTemplateDefault": false
          }
        }
      },
      "id": "259"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_webthreatdefense_serviceenabled",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0883a19d-41a8-44d2-b2ef-76833ccbf40e"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_webthreatdefense_serviceenabled_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "ade6cf22-2187-4318-8a72-a9aa98ecab9d",
            "useTemplateDefault": false
          }
        }
      },
      "id": "260"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_smartscreen_enablesmartscreeninshell",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "972b8064-a094-4c72-b265-6997fcdc1b52"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_smartscreen_enablesmartscreeninshell_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "62e3cedd-6830-4ef4-841e-5229b18ed5a8",
            "useTemplateDefault": false
          }
        }
      },
      "id": "261"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_smartscreen_preventoverrideforfilesinshell",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "87820c20-6abb-4bd4-848f-d15c72d9520b"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_smartscreen_preventoverrideforfilesinshell_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "cc41a8c7-37ae-47d9-b028-eddc516e565b",
            "useTemplateDefault": false
          }
        }
      },
      "id": "262"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          },
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-555",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_accessfromnetwork",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "61c8e66e-9a7e-45a5-9042-0a80fb408885"
        }
      },
      "id": "263"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          },
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-545",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_allowlocallogon",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "7fb5a68d-7bcc-47e6-8f1e-c27e333c0ca5"
        }
      },
      "id": "264"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_backupfilesanddirectories",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "7ee40c2c-b63e-49df-9dc4-72ac0d3372a7"
        }
      },
      "id": "265"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          },
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-19",
            "settingValueTemplateReference": null
          },
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-20",
            "settingValueTemplateReference": null
          },
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-6",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_createglobalobjects",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "fce5b980-fcb2-45d4-92f2-8305866a1a82"
        }
      },
      "id": "266"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_createpagefile",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "37b58477-a9a4-41f6-902d-10802cbabd75"
        }
      },
      "id": "267"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_debugprograms",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "7966b135-6e44-4f2f-95d8-4ad0fc765094"
        }
      },
      "id": "268"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-113",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_denyaccessfromnetwork",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "4cff8966-fbf1-43a3-844a-bc6cd2abec55"
        }
      },
      "id": "269"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-113",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_denyremotedesktopserviceslogon",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "65daf6e6-ae7c-4d8e-b54c-782ae7e45536"
        }
      },
      "id": "270"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          },
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-6",
            "settingValueTemplateReference": null
          },
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-19",
            "settingValueTemplateReference": null
          },
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-20",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_impersonateclient",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "9640f944-5dfa-4189-994d-193dd2fb4e8c"
        }
      },
      "id": "271"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_loadunloaddevicedrivers",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "82e3f8e7-61ae-47de-9f1a-5e4156db9a88"
        }
      },
      "id": "272"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_manageauditingandsecuritylog",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "053df5bb-4b36-4301-a3fc-a91852fa609e"
        }
      },
      "id": "273"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_managevolume",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "0ddb6d69-4798-4a7f-80e7-8225d47fc311"
        }
      },
      "id": "274"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_modifyfirmwareenvironment",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "378d0e25-4218-460a-b61d-cf718f6a4dfc"
        }
      },
      "id": "275"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_profilesingleprocess",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "a1bd89ec-7bca-4b88-81cd-1e5cf4d88aa3"
        }
      },
      "id": "276"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_remoteshutdown",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "638c77cc-d094-4e77-b267-a4b14339304d"
        }
      },
      "id": "277"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_restorefilesanddirectories",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "3d621876-79f8-4976-bf8c-21c638da2c3e"
        }
      },
      "id": "278"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
        "simpleSettingCollectionValue": [
          {
            "@odata.type": "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
            "value": "*S-1-5-32-544",
            "settingValueTemplateReference": null
          }
        ],
        "settingDefinitionId": "device_vendor_msft_policy_config_userrights_takeownership",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "bea9e3e4-316b-43b2-ab23-b98c0b929afe"
        }
      },
      "id": "279"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_virtualizationbasedtechnology_hypervisorenforcedcodeintegrity",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "bdce8f32-9b0d-4a7e-b08b-10e4d85297b1"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_virtualizationbasedtechnology_hypervisorenforcedcodeintegrity_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "d6759bc2-ec35-4fbe-bb8e-b409f02e9ca0",
            "useTemplateDefault": false
          }
        }
      },
      "id": "280"
    },
    {
      "settingInstance": {
        "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
        "settingDefinitionId": "device_vendor_msft_policy_config_windowsinkworkspace_allowwindowsinkworkspace",
        "settingInstanceTemplateReference": {
          "settingInstanceTemplateId": "c2c6cbbd-2532-4556-867c-917b072353a8"
        },
        "choiceSettingValue": {
          "children": [],
          "value": "device_vendor_msft_policy_config_windowsinkworkspace_allowwindowsinkworkspace_1",
          "settingValueTemplateReference": {
            "settingValueTemplateId": "9f82ecbc-cefc-4603-b050-9a1e863ba6b0",
            "useTemplateDefault": false
          }
        }
      },
      "id": "281"
    }
  ],
  })

  assignments = {
    all_devices = false
    # all_devices_filter_type = "exclude"
    # all_devices_filter_id   = "2d7956fb-e5b5-4fa3-90b2-5bee9bee7883"

    all_users = false
    # all_users_filter_type = "include"
    # all_users_filter_id   = "80f8c0a5-f3ec-4936-bcbc-420dc0ca3665"

    include_groups = [
      {
        group_id                   = "51a96cdd-4b9b-4849-b416-8c94a6d88797"
        include_groups_filter_type = "none"
      },
      {
        group_id                   = "b15228f4-9d49-41ed-9b4f-0e7c721fd9c2"
        include_groups_filter_type = "none"
      },
    ]

    exclude_group_ids = [
      "b8c661c2-fa9a-4351-af86-adc1729c343f",
      "f6ebd6ff-501e-4b3d-a00b-a2e102c3fa0f",
    ]
  }

  timeouts = {
    create = "1m"
    read   = "1m"
    update = "1m"
    delete = "1m"
  }
}