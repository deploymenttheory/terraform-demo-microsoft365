resource "microsoft365_graph_beta_device_management_settings_catalog" "test_macOS_system_configuration" {
  name               = "Test Settings Catalog Profile - macOS system configuration"
  description        = ""
  platforms          = "macOS"
  technologies       = ["mdm", "appleRemoteManagement"]
  role_scope_tag_ids = ["8"]

  settings = jsonencode({

    "settings" : [
      {
        "settingInstance": {
          "groupSettingCollectionValue": [
            {
              "settingValueTemplateReference": null,
              "children": [
                {
                  "groupSettingCollectionValue": [
                    {
                      "settingValueTemplateReference": null,
                      "children": [
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.desktop.acpower_automatic restart on power loss_0",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.acpower_automatic restart on power loss"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue": {
                            "settingValueTemplateReference": null,
                            "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                            "value": 1
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.acpower_disk sleep timer"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue": {
                            "settingValueTemplateReference": null,
                            "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                            "value": 1
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.acpower_display sleep timer"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.desktop.acpower_dynamic power step_1",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.acpower_dynamic power step"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.desktop.acpower_reduce processor speed_1",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.acpower_reduce processor speed"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue": {
                            "settingValueTemplateReference": null,
                            "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                            "value": 1
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.acpower_system sleep timer"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.desktop.acpower_wake on lan_1",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.acpower_wake on lan"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.desktop.acpower_wake on modem ring_1",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.acpower_wake on modem ring"
                        }
                      ]
                    }
                  ],
                  "settingInstanceTemplateReference": null,
                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                  "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.acpower"
                },
                {
                  "groupSettingCollectionValue": [
                    {
                      "settingValueTemplateReference": null,
                      "children": [
                        {
                          "groupSettingCollectionValue": [
                            {
                              "settingValueTemplateReference": null,
                              "children": [
                                {
                                  "settingInstanceTemplateReference": null,
                                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                  "choiceSettingValue": {
                                    "settingValueTemplateReference": null,
                                    "value": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweroff_eventtype_0",
                                    "children": []
                                  },
                                  "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweroff_eventtype"
                                },
                                {
                                  "settingInstanceTemplateReference": null,
                                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                                  "simpleSettingValue": {
                                    "settingValueTemplateReference": null,
                                    "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                                    "value": 1
                                  },
                                  "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweroff_time"
                                },
                                {
                                  "settingInstanceTemplateReference": null,
                                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingCollectionInstance",
                                  "choiceSettingCollectionValue": [
                                    {
                                      "settingValueTemplateReference": null,
                                      "value": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweroff_weekdays_0",
                                      "children": []
                                    }
                                  ],
                                  "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweroff_weekdays"
                                }
                              ]
                            }
                          ],
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweroff"
                        },
                        {
                          "groupSettingCollectionValue": [
                            {
                              "settingValueTemplateReference": null,
                              "children": [
                                {
                                  "settingInstanceTemplateReference": null,
                                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                                  "choiceSettingValue": {
                                    "settingValueTemplateReference": null,
                                    "value": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweron_eventtype_0",
                                    "children": []
                                  },
                                  "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweron_eventtype"
                                },
                                {
                                  "settingInstanceTemplateReference": null,
                                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                                  "simpleSettingValue": {
                                    "settingValueTemplateReference": null,
                                    "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                                    "value": 1
                                  },
                                  "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweron_time"
                                },
                                {
                                  "settingInstanceTemplateReference": null,
                                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingCollectionInstance",
                                  "choiceSettingCollectionValue": [
                                    {
                                      "settingValueTemplateReference": null,
                                      "value": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweron_weekdays_0",
                                      "children": []
                                    }
                                  ],
                                  "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweron_weekdays"
                                }
                              ]
                            }
                          ],
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.schedule_repeatingpoweron"
                        }
                      ]
                    }
                  ],
                  "settingInstanceTemplateReference": null,
                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                  "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.desktop.schedule"
                },
                {
                  "settingInstanceTemplateReference": null,
                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                  "choiceSettingValue": {
                    "settingValueTemplateReference": null,
                    "value": "com.apple.mcx_destroyfvkeyonstandby_true",
                    "children": []
                  },
                  "settingDefinitionId": "com.apple.mcx_destroyfvkeyonstandby"
                },
                {
                  "groupSettingCollectionValue": [
                    {
                      "settingValueTemplateReference": null,
                      "children": [
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.portable.batterypower_automatic restart on power loss_0",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.batterypower_automatic restart on power loss"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue": {
                            "settingValueTemplateReference": null,
                            "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                            "value": 0
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.batterypower_disk sleep timer"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue": {
                            "settingValueTemplateReference": null,
                            "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                            "value": 0
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.batterypower_display sleep timer"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.portable.batterypower_dynamic power step_1",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.batterypower_dynamic power step"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.portable.batterypower_reduce processor speed_1",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.batterypower_reduce processor speed"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue": {
                            "settingValueTemplateReference": null,
                            "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                            "value": 0
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.batterypower_system sleep timer"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.portable.batterypower_wake on lan_0",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.batterypower_wake on lan"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.portable.batterypower_wake on modem ring_0",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.batterypower_wake on modem ring"
                        }
                      ]
                    }
                  ],
                  "settingInstanceTemplateReference": null,
                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                  "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.batterypower"
                },
                {
                  "groupSettingCollectionValue": [
                    {
                      "settingValueTemplateReference": null,
                      "children": [
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.portable.acpower_automatic restart on power loss_0",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.acpower_automatic restart on power loss"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue": {
                            "settingValueTemplateReference": null,
                            "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                            "value": 1
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.acpower_disk sleep timer"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue": {
                            "settingValueTemplateReference": null,
                            "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                            "value": 1
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.acpower_display sleep timer"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.portable.acpower_dynamic power step_0",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.acpower_dynamic power step"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.portable.acpower_reduce processor speed_0",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.acpower_reduce processor speed"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue": {
                            "settingValueTemplateReference": null,
                            "@odata.type": "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                            "value": 1
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.acpower_system sleep timer"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.portable.acpower_wake on lan_0",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.acpower_wake on lan"
                        },
                        {
                          "settingInstanceTemplateReference": null,
                          "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue": {
                            "settingValueTemplateReference": null,
                            "value": "com.apple.mcx_com.apple.energysaver.portable.acpower_wake on modem ring_0",
                            "children": []
                          },
                          "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.acpower_wake on modem ring"
                        }
                      ]
                    }
                  ],
                  "settingInstanceTemplateReference": null,
                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                  "settingDefinitionId": "com.apple.mcx_com.apple.energysaver.portable.acpower"
                },
                {
                  "settingInstanceTemplateReference": null,
                  "@odata.type": "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                  "choiceSettingValue": {
                    "settingValueTemplateReference": null,
                    "value": "com.apple.mcx_sleepdisabled_false",
                    "children": []
                  },
                  "settingDefinitionId": "com.apple.mcx_sleepdisabled"
                }
              ]
            }
          ],
          "settingInstanceTemplateReference": null,
          "@odata.type": "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
          "settingDefinitionId": "com.apple.mcx_com.apple.mcx-energysaver"
        },
        "id": "0"
      },
      {
        "settingInstance" : {
          "groupSettingCollectionValue" : [
            {
              "settingValueTemplateReference" : null,
              "children" : [
                {
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                  "choiceSettingValue" : {
                    "settingValueTemplateReference" : null,
                    "value" : "com.apple.fileproviderd_allowmanagedfileproviderstorequestattribution_false",
                    "children" : []
                  },
                  "settingDefinitionId" : "com.apple.fileproviderd_allowmanagedfileproviderstorequestattribution"
                }
              ]
            }
          ],
          "settingInstanceTemplateReference" : null,
          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
          "settingDefinitionId" : "com.apple.fileproviderd_com.apple.fileproviderd"
        },
        "id" : "1"
      },
      {
        "settingInstance" : {
          "groupSettingCollectionValue" : [
            {
              "settingValueTemplateReference" : null,
              "children" : [
                {
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                  "choiceSettingValue" : {
                    "settingValueTemplateReference" : null,
                    "value" : "com.apple.screensaver_askforpassword_true",
                    "children" : []
                  },
                  "settingDefinitionId" : "com.apple.screensaver_askforpassword"
                },
                {
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                  "simpleSettingValue" : {
                    "settingValueTemplateReference" : null,
                    "@odata.type" : "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                    "value" : 1
                  },
                  "settingDefinitionId" : "com.apple.screensaver_askforpassworddelay"
                },
                {
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                  "simpleSettingValue" : {
                    "settingValueTemplateReference" : null,
                    "@odata.type" : "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue",
                    "value" : 1
                  },
                  "settingDefinitionId" : "com.apple.screensaver_loginwindowidletime"
                },
                {
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                  "simpleSettingValue" : {
                    "settingValueTemplateReference" : null,
                    "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                    "value" : "test"
                  },
                  "settingDefinitionId" : "com.apple.screensaver_loginwindowmodulepath"
                },
                {
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                  "simpleSettingValue" : {
                    "settingValueTemplateReference" : null,
                    "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                    "value" : "tets"
                  },
                  "settingDefinitionId" : "com.apple.screensaver_modulename"
                }
              ]
            }
          ],
          "settingInstanceTemplateReference" : null,
          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
          "settingDefinitionId" : "com.apple.screensaver_com.apple.screensaver"
        },
        "id" : "2"
      },
      {
        "settingInstance" : {
          "groupSettingCollectionValue" : [
            {
              "settingValueTemplateReference" : null,
              "children" : [
                {
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                  "choiceSettingValue" : {
                    "settingValueTemplateReference" : null,
                    "value" : "com.apple.system-extension-policy_allowuseroverrides_true",
                    "children" : []
                  },
                  "settingDefinitionId" : "com.apple.system-extension-policy_allowuseroverrides"
                },
                {
                  "groupSettingCollectionValue" : [
                    {
                      "settingValueTemplateReference" : null,
                      "children" : [
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
                          "simpleSettingCollectionValue" : [
                            {
                              "settingValueTemplateReference" : null,
                              "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                              "value" : "thing"
                            }
                          ],
                          "settingDefinitionId" : "com.apple.system-extension-policy_allowedsystemextensiontypes_generickey"
                        },
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue" : {
                            "settingValueTemplateReference" : null,
                            "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                            "value" : "thing"
                          },
                          "settingDefinitionId" : "com.apple.system-extension-policy_allowedsystemextensiontypes_generickey_keytobereplaced"
                        }
                      ]
                    }
                  ],
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                  "settingDefinitionId" : "com.apple.system-extension-policy_allowedsystemextensiontypes"
                },
                {
                  "groupSettingCollectionValue" : [
                    {
                      "settingValueTemplateReference" : null,
                      "children" : [
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
                          "simpleSettingCollectionValue" : [
                            {
                              "settingValueTemplateReference" : null,
                              "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                              "value" : "thing2"
                            }
                          ],
                          "settingDefinitionId" : "com.apple.system-extension-policy_allowedsystemextensions_generickey"
                        },
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue" : {
                            "settingValueTemplateReference" : null,
                            "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                            "value" : "thing2"
                          },
                          "settingDefinitionId" : "com.apple.system-extension-policy_allowedsystemextensions_generickey_keytobereplaced"
                        }
                      ]
                    }
                  ],
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                  "settingDefinitionId" : "com.apple.system-extension-policy_allowedsystemextensions"
                },
                {
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
                  "simpleSettingCollectionValue" : [
                    {
                      "settingValueTemplateReference" : null,
                      "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                      "value" : "thing"
                    },
                    {
                      "settingValueTemplateReference" : null,
                      "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                      "value" : "thing2"
                    }
                  ],
                  "settingDefinitionId" : "com.apple.system-extension-policy_allowedteamidentifiers"
                },
                {
                  "groupSettingCollectionValue" : [
                    {
                      "settingValueTemplateReference" : null,
                      "children" : [
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
                          "simpleSettingCollectionValue" : [
                            {
                              "settingValueTemplateReference" : null,
                              "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                              "value" : "thing"
                            }
                          ],
                          "settingDefinitionId" : "com.apple.system-extension-policy_nonremovablefromuisystemextensions_generickey"
                        },
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue" : {
                            "settingValueTemplateReference" : null,
                            "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                            "value" : "thing"
                          },
                          "settingDefinitionId" : "com.apple.system-extension-policy_nonremovablefromuisystemextensions_generickey_keytobereplaced"
                        }
                      ]
                    }
                  ],
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                  "settingDefinitionId" : "com.apple.system-extension-policy_nonremovablefromuisystemextensions"
                },
                {
                  "groupSettingCollectionValue" : [
                    {
                      "settingValueTemplateReference" : null,
                      "children" : [
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
                          "simpleSettingCollectionValue" : [
                            {
                              "settingValueTemplateReference" : null,
                              "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                              "value" : "thing"
                            }
                          ],
                          "settingDefinitionId" : "com.apple.system-extension-policy_nonremovablesystemextensions_generickey"
                        },
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue" : {
                            "settingValueTemplateReference" : null,
                            "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                            "value" : "thing"
                          },
                          "settingDefinitionId" : "com.apple.system-extension-policy_nonremovablesystemextensions_generickey_keytobereplaced"
                        }
                      ]
                    }
                  ],
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                  "settingDefinitionId" : "com.apple.system-extension-policy_nonremovablesystemextensions"
                },
                {
                  "groupSettingCollectionValue" : [
                    {
                      "settingValueTemplateReference" : null,
                      "children" : [
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance",
                          "simpleSettingCollectionValue" : [
                            {
                              "settingValueTemplateReference" : null,
                              "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                              "value" : "thing"
                            }
                          ],
                          "settingDefinitionId" : "com.apple.system-extension-policy_removablesystemextensions_generickey"
                        },
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                          "simpleSettingValue" : {
                            "settingValueTemplateReference" : null,
                            "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                            "value" : "thing"
                          },
                          "settingDefinitionId" : "com.apple.system-extension-policy_removablesystemextensions_generickey_keytobereplaced"
                        }
                      ]
                    }
                  ],
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                  "settingDefinitionId" : "com.apple.system-extension-policy_removablesystemextensions"
                }
              ]
            }
          ],
          "settingInstanceTemplateReference" : null,
          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
          "settingDefinitionId" : "com.apple.system-extension-policy_com.apple.system-extension-policy"
        },
        "id" : "3"
      },
      {
        "settingInstance" : {
          "groupSettingCollectionValue" : [
            {
              "settingValueTemplateReference" : null,
              "children" : [
                {
                  "groupSettingCollectionValue" : [
                    {
                      "settingValueTemplateReference" : null,
                      "children" : [
                        {
                          "settingInstanceTemplateReference" : null,
                          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance",
                          "choiceSettingValue" : {
                            "settingValueTemplateReference" : null,
                            "value" : "com.apple.system.logging_system_enable-private-data_true",
                            "children" : []
                          },
                          "settingDefinitionId" : "com.apple.system.logging_system_enable-private-data"
                        }
                      ]
                    }
                  ],
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
                  "settingDefinitionId" : "com.apple.system.logging_system"
                }
              ]
            }
          ],
          "settingInstanceTemplateReference" : null,
          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
          "settingDefinitionId" : "com.apple.system.logging_com.apple.system.logging"
        },
        "id" : "4"
      },
      {
        "settingInstance" : {
          "groupSettingCollectionValue" : [
            {
              "settingValueTemplateReference" : null,
              "children" : [
                {
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                  "simpleSettingValue" : {
                    "settingValueTemplateReference" : null,
                    "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                    "value" : "zulu"
                  },
                  "settingDefinitionId" : "com.apple.mcx_timeserver"
                },
                {
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance",
                  "simpleSettingValue" : {
                    "settingValueTemplateReference" : null,
                    "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue",
                    "value" : "zulu"
                  },
                  "settingDefinitionId" : "com.apple.mcx_timezone"
                }
              ]
            }
          ],
          "settingInstanceTemplateReference" : null,
          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
          "settingDefinitionId" : "com.apple.mcx_com.apple.mcx-timeserver"
        },
        "id" : "5"
      }
    ]
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
        include_groups_filter_type = "include"
        include_groups_filter_id   = "80f8c0a5-f3ec-4936-bcbc-420dc0ca3665"
      },
      {
        group_id                   = "b15228f4-9d49-41ed-9b4f-0e7c721fd9c2"
        include_groups_filter_type = "include"
        include_groups_filter_id   = "2d7956fb-e5b5-4fa3-90b2-5bee9bee7883"
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