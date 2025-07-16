# resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "security_baseline_for_windows_365" {
#   name               = "Windows 365 Security Baseline - 24H1 - hcl"
#   description        = "terraform test for settings catalog templates"
#   platforms          = "windows10"
#   technologies       = ["mdm"]
#   role_scope_tag_ids = ["0"]

#   template_reference = {
#     template_id = "b00e1a0f-19dd-41de-8243-e6733ca7b4ae_1"
#   }

#   configuration_policy = {
#     settings = [
#       {
#         id = "0"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_devicelock_preventenablinglockscreencamera"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "6d3ff27f-d01a-4573-89b8-9868f3ec2d29"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_devicelock_preventenablinglockscreencamera_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "55fdc432-25a4-4c9e-b81a-d79d64449438"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "1"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_devicelock_preventlockscreenslideshow"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "857f467d-0c7b-4e89-928c-be861c3f09d9"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_devicelock_preventlockscreenslideshow_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "fac4ab7d-83a7-48b7-a4bc-d200d2f2e9f7"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "2"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_mssecurityguide_applyuacrestrictionstolocalaccountsonnetworklogon"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0e3cc3fc-d768-4e72-9ff2-b582abbb58cb"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_mssecurityguide_applyuacrestrictionstolocalaccountsonnetworklogon_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "28549ee7-f25f-4f50-821d-4ad614e4205e"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "3"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "04195c70-1998-46b4-a727-c1dda0158e3f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "bab0271a-a57e-49d9-9a1b-a73e6da70abc"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver_pol_secguide_smb1clientdriver"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "f5c62cd8-9b27-4a80-b96b-f3f92dfbdd24"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1clientdriver_pol_secguide_smb1clientdriver_4"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "95f5956f-1275-47ed-941b-7965f7f99fcd"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "4"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1server"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "1819cc56-a8b4-4cca-822d-f0565cb1d8f5"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_mssecurityguide_configuresmbv1server_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "799b8771-78f4-4595-b512-8f189228ec2e"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "5"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_mssecurityguide_enablestructuredexceptionhandlingoverwriteprotection"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "66706ba7-940b-4924-ae86-256540ce71e8"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_mssecurityguide_enablestructuredexceptionhandlingoverwriteprotection_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4fb0ecdd-8af7-403c-aff1-e68f9d8dc3a7"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "6"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_mssecurityguide_wdigestauthentication"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9622c22c-7034-4665-adc5-c3a717077561"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_mssecurityguide_wdigestauthentication_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "9d873d73-81df-430c-b780-45743859a5cf"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "7"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "da4ba0c4-1574-481c-bc7d-02204d84d7a8"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a2f5f959-52fc-4bfe-acf8-48ff4d696d73"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel_disableipsourceroutingipv6"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "6c0eda94-10c6-48b0-a6fa-a94142189829"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_msslegacy_ipv6sourceroutingprotectionlevel_disableipsourceroutingipv6_2"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "1cd6d10d-e439-4fb0-bc32-ac4b1736076d"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "8"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "2cd149a3-d896-4062-a7c5-6e4a3febc508"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c360f490-e7fe-44ea-aa77-77b27351e9e6"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel_disableipsourcerouting"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "1f92962d-a9f7-4062-a298-b646fe5e7776"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_msslegacy_ipsourceroutingprotectionlevel_disableipsourcerouting_2"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "8a20ccb6-8543-48b3-9076-047283eaec0e"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "9"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_msslegacy_allowicmpredirectstooverrideospfgeneratedroutes"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9743e6c4-998f-4b71-9f09-990d8c6a324f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_msslegacy_allowicmpredirectstooverrideospfgeneratedroutes_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "dd780fd6-8cf7-4813-9a04-baa0d093a3ef"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "10"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_msslegacy_allowthecomputertoignorenetbiosnamereleaserequestsexceptfromwinsservers"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f0fa834d-85de-44ef-a917-21c0b8df2d28"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_msslegacy_allowthecomputertoignorenetbiosnamereleaserequestsexceptfromwinsservers_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d548f09a-bcfe-4e96-886f-5a1681fca8e5"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "11"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_admx_dnsclient_turn_off_multicast"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "3a78a41c-2c9a-48c7-a74e-638672069e69"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_admx_dnsclient_turn_off_multicast_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "614b2818-c5c4-41ab-891b-bbcd7c10b559"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "12"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_admx_networkconnections_nc_showsharedaccessui"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "a5b690ca-05a7-462f-b137-bd32fab190c1"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_admx_networkconnections_nc_showsharedaccessui_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "74b22a85-bd94-45ac-807b-3908538779fb"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "13"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_connectivity_hardeneduncpaths"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "d91dd0cc-d856-48ca-817a-2f6e96013d30"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d5678c52-cc88-402a-ae64-80c534260680"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "fa178b97-7a2b-43fd-a068-f3b653e412cb"
#                 }
#                 group_setting_collection_value = [
#                   {
#                     children = [
#                       {
#                         odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                         setting_definition_id = "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_value"
#                         setting_instance_template_reference = {
#                           setting_instance_template_id = "1aac51f5-f6b2-4965-a024-259dd36cce09"
#                         }
#                         simple_setting_value = {
#                           odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#                           value      = "RequireMutualAuthentication=1,RequireIntegrity=1"
#                           setting_value_template_reference = {
#                             use_template_default      = false
#                             setting_value_template_id = "8cd0b065-98d3-4a23-8579-d6b565851bad"
#                           }
#                         }
#                       },
#                       {
#                         odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                         setting_definition_id = "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_key"
#                         setting_instance_template_reference = {
#                           setting_instance_template_id = "5db029e9-257f-472e-96c3-59a0b2f454ef"
#                         }
#                         simple_setting_value = {
#                           odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#                           value      = "\\\\*\\NETLOGON"
#                           setting_value_template_reference = {
#                             use_template_default      = false
#                             setting_value_template_id = "014c1ef4-afa2-4db4-add8-1b756d105c46"
#                           }
#                         }
#                       }
#                     ]
#                   },
#                   {
#                     children = [
#                       {
#                         odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                         setting_definition_id = "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_value"
#                         setting_instance_template_reference = {
#                           setting_instance_template_id = "1ecf4003-3dba-40d2-be0f-48960644a1e8"
#                         }
#                         simple_setting_value = {
#                           odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#                           value      = "RequireMutualAuthentication=1,RequireIntegrity=1"
#                           setting_value_template_reference = {
#                             use_template_default      = false
#                             setting_value_template_id = "527de6e1-d597-4298-9970-54674b77a34b"
#                           }
#                         }
#                       },
#                       {
#                         odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                         setting_definition_id = "device_vendor_msft_policy_config_connectivity_hardeneduncpaths_pol_hardenedpaths_key"
#                         setting_instance_template_reference = {
#                           setting_instance_template_id = "8172ce33-2800-4e15-b72b-a7497b6b648c"
#                         }
#                         simple_setting_value = {
#                           odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#                           value      = "\\\\*\\SYSVOL"
#                           setting_value_template_reference = {
#                             use_template_default      = false
#                             setting_value_template_id = "dd00e3bd-1f36-4c8c-97da-0b3eab8d0a60"
#                           }
#                         }
#                       }
#                     ]
#                   }
#                 ]
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "14"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_windowsconnectionmanager_prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "db9beb19-a677-4741-ac01-6d5dbad87bb6"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_windowsconnectionmanager_prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "39c47e4d-8159-47f2-a7bf-cb6707fa74a3"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "15"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "user_vendor_msft_policy_config_admx_wpn_nolockscreentoastnotification"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "1ae482d1-4817-426d-8001-c86335d2d9ae"
#           }
#           choice_setting_value = {
#             value = "user_vendor_msft_policy_config_admx_wpn_nolockscreentoastnotification_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "00f5afaa-2fb3-43ce-bfaf-c1556c5f04fc"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "16"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_admx_credssp_allowencryptionoracle"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "67c9506c-2c17-4486-b36b-f05f2bca1405"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_admx_credssp_allowencryptionoracle_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2a7f62e3-229d-4239-80dd-4ffb86da132e"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_admx_credssp_allowencryptionoracle_allowencryptionoracledrop"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "ccc4b81b-e461-4c02-b498-1e39fc5750de"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_admx_credssp_allowencryptionoracle_allowencryptionoracledrop_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "911aa630-939c-4e92-88e4-c7299e35df2a"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "17"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_credentialsdelegation_remotehostallowsdelegationofnonexportablecredentials"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "b5614652-b627-4f2e-b26e-011ab0aabfff"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_credentialsdelegation_remotehostallowsdelegationofnonexportablecredentials_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "9b3308e2-7934-49c8-b12b-5065e71cc6e9"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "18"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "e66778d2-c783-4359-8ddb-afeff7defa04"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "40be1b72-0a1e-4b27-b5e5-991d3565246d"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_deviceinstall_classes_deny_retroactive"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "2e97fabe-3af2-4c13-83cf-eb82d7acc442"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_deviceinstall_classes_deny_retroactive_1"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "f5e47d94-ab4b-4439-9103-62a7d9a9e931"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_deviceinstallation_preventinstallationofmatchingdevicesetupclasses_deviceinstall_classes_deny_list"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "2d66972a-e2c4-4525-b506-3a86c17d95b0"
#                 }
#                 simple_setting_collection_value = [
#                   {
#                     odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#                     value      = "{d48179be-ec20-11d1-b6b8-00c04fa372a7}"
#                   }
#                 ]
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "19"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_system_bootstartdriverinitialization"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "61ae32f6-d676-4c56-83c6-2733c71c00c9"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_system_bootstartdriverinitialization_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "6e3feb5a-29ef-4e07-8b67-a85e49c71d2e"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_system_bootstartdriverinitialization_selectdriverloadpolicy"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "5772742b-0b3b-4388-ba7c-4737619e8616"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_system_bootstartdriverinitialization_selectdriverloadpolicy_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "20d93d4b-73f5-4a34-8252-2016b665cd96"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "20"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "126e039f-ac4b-4854-8d05-06261efbcc59"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "e1b89570-a2ac-42dc-88a9-e42cee871860"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nobackground10"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "761a8555-4af9-4321-9979-2c2b01f618a4"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nobackground10_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "b8f7c2ad-25f5-48ba-83fc-733ae110d555"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nochanges10"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "2f6c4a59-96c3-444b-a85f-314e87e3289c"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_admx_grouppolicy_cse_registry_cse_nochanges10_1"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "bc72a669-542a-4f8b-85af-788c4ccee7aa"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "21"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_connectivity_disabledownloadingofprintdriversoverhttp"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "8b16abf7-5709-43f6-840e-3b1b96633eb2"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_connectivity_disabledownloadingofprintdriversoverhttp_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c7c4c603-aadd-4248-8ebd-8369cc44c876"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "22"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_connectivity_disableinternetdownloadforwebpublishingandonlineorderingwizards"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "3d849f02-ce4f-4282-b91a-65ad2f131e9f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_connectivity_disableinternetdownloadforwebpublishingandonlineorderingwizards_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "3352902a-5da8-425c-a7a0-0a964d619568"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "23"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remoteassistance_solicitedremoteassistance"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "42031e33-95e8-4764-a80c-64e15b6cdbe1"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remoteassistance_solicitedremoteassistance_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2b6692ac-43f4-4f7b-9250-be684ef26cc3"
#             }
#             children = []
#           }
#         }
#       },
#      {
#         id = "24"
#         setting_instance = {
#           setting_definition_id = "device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients"
#           choice_setting_value = {
#             children = [
#               {
#                 setting_definition_id = "device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients_rpcrestrictremoteclientslist"
#                 choice_setting_value = {
#                   children = []
#                   value = "device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients_rpcrestrictremoteclientslist_1"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "683530b4-d739-4bca-82e3-7063a205bc49"
#                   }
#                 },
#                 odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "99af2000-edb4-4646-856e-507cfc68a21b"
#                 }
#               }
#             ],
#             value = "device_vendor_msft_policy_config_remoteprocedurecall_restrictunauthenticatedrpcclients_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c1c37201-6661-44a2-ab7e-cdc7d32e2fb4"
#             }
#           },
#           odata_type = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "88cff52f-7bcd-41d7-9486-4152f6e4f5d9"
#           }
#         }
#       },
#       {
#         id = "25"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_appruntime_allowmicrosoftaccountstobeoptional"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "1b5c0723-50a0-4b8d-bc9d-49aec07670b8"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_appruntime_allowmicrosoftaccountstobeoptional_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d1dcbc04-81e1-4568-9bab-93d810abfa18"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "26"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_autoplay_disallowautoplayfornonvolumedevices"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f251c411-4dc0-42cf-8862-28efffa1813f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_autoplay_disallowautoplayfornonvolumedevices_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "fc8dcea1-4f7c-4993-a333-c260a3b5ca00"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "27"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "30af41d9-7528-47c0-82bb-6e738d39f3e4"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "3d0b0500-0a14-4906-9728-8747b8625709"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior_noautorun_dropdown"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "d31a90c3-8e8b-4fa5-b182-d95e14166d06"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_autoplay_setdefaultautorunbehavior_noautorun_dropdown_1"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "5bd60af6-34d2-47b1-8c81-552cffbd1286"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "28"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_autoplay_turnoffautoplay"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "bae4cdaa-a3e8-443b-9b13-b94eb6e4d154"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_autoplay_turnoffautoplay_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "591bd619-f484-467d-8869-c67226b8848f"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_autoplay_turnoffautoplay_autorun_box"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "b8ec3994-debb-4431-98ea-2ec032fd9fff"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_autoplay_turnoffautoplay_autorun_box_255"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "382c09af-d4f2-4173-a702-b39de4a1defc"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "29"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_credentialsui_enumerateadministrators"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "630a5b73-8188-43ee-9f44-f6ae6cff0248"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_credentialsui_enumerateadministrators_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "12e4f59c-3e74-40a0-ae22-d18601d49bfa"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "30"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizeapplicationlog"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "8bf65ff7-9592-4972-a5d9-d2b0b20c71f0"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizeapplicationlog_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "16f75a38-05ce-4a40-a228-bb6c6882d01f"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizeapplicationlog_channel_logmaxsize"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "7593a380-b73e-4abf-ad18-5ed1174d06e4"
#                 }
#                 simple_setting_value = {
#                   odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
#                   value      = 32768
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "8f31c4a9-4052-4305-8c4e-fd1f17b6fb5f"
#                   }
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "31"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesecuritylog"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "820d4142-2e0e-4348-8fdc-f6197a503381"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesecuritylog_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "253ca855-0463-49ec-b0ae-453fb4ad2af8"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesecuritylog_channel_logmaxsize"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "91a3fc21-bd29-4c56-a1a6-6d80bf3b4c5a"
#                 }
#                 simple_setting_value = {
#                   odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
#                   value      = 196608
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "b151518d-d9ab-456b-ad75-41a2490a8c76"
#                   }
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "32"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesystemlog"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ba645652-4d24-433e-930a-37ed9170ecab"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesystemlog_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "64ded1e8-8951-4400-b198-c3d22b6f04cf"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_eventlogservice_specifymaximumfilesizesystemlog_channel_logmaxsize"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "28eea3c3-850f-4c59-b3ab-51444d2dfb73"
#                 }
#                 simple_setting_value = {
#                   odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
#                   value      = 32768
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "fbfbfdae-536e-4c74-8cc3-7f5038821340"
#                   }
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "33"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "87a2a9bc-8f9f-4ebe-b63a-081672380567"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "0dd678dd-3cc6-49c3-81bf-3f52e107c117"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen_enablesmartscreendropdown"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "bae75487-9bda-491c-8da3-4884d8c81aa3"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_admx_windowsexplorer_enablesmartscreen_enablesmartscreendropdown_block"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "5bb4de61-803b-47f7-b9c9-8329f56e0f1f"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "34"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_fileexplorer_turnoffdataexecutionpreventionforexplorer"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "75c3d79b-7266-4a09-a7ae-daed7eb90fad"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_fileexplorer_turnoffdataexecutionpreventionforexplorer_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "ad53c710-f89f-4ce0-8b30-3d7b06d92014"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "35"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_fileexplorer_turnoffheapterminationoncorruption"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f6e15787-b0a0-4766-a490-97764b473c4b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_fileexplorer_turnoffheapterminationoncorruption_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "27b82957-b06e-4cf9-a44e-6931c6f2cefd"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "36"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_allowsoftwarewhensignatureisinvalid"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "fcdf1c86-c4f4-473f-98ec-7a4580f9eddf"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_allowsoftwarewhensignatureisinvalid_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "761210e5-7209-42ad-aad4-d3d701f16dd7"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "37"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_checkservercertificaterevocation"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "24ade6d2-32e9-4c4f-afca-1b1c85d96c7f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_checkservercertificaterevocation_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "24acf5a8-8697-4c27-b08d-7596075252c7"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "38"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_checksignaturesondownloadedprograms"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "b51d7ab3-a608-4155-bc3c-a699229f54ea"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_checksignaturesondownloadedprograms_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4c38e023-dbc5-47a4-99a0-9de17d07d9af"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "39"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_donotallowactivexcontrolsinprotectedmode"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "008b6443-3d12-4d5a-bfe7-b011ec3a2db5"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_donotallowactivexcontrolsinprotectedmode_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "eab72485-d150-4626-b0d7-d03c7fd538a1"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "40"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_disableencryptionsupport"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "33b80b9c-4a4e-411d-820a-0a32a8397d71"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_disableencryptionsupport_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "8644a0ac-4a11-4d0c-a2cd-c7956b36a73f"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_disableencryptionsupport_advanced_wininetprotocoloptions"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "069ba029-35bf-431d-b788-cc3c6ea1149a"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_disableencryptionsupport_advanced_wininetprotocoloptions_2560"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "62d0546d-0d36-4763-89d3-5720c5bce853"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "41"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_disableprocessesinenhancedprotectedmode"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "5752c574-6877-4bd3-9d09-a9b534203449"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_disableprocessesinenhancedprotectedmode_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "65ac7fc3-70c1-4f32-8eae-c18779432a52"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "42"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_allowenhancedprotectedmode"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ceaf9a7d-fc21-417f-9efd-d631d11a7223"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_allowenhancedprotectedmode_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "9cc08d5c-d204-437f-aeab-11c0eb40f1f7"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "43"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowaccesstodatasources"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "1369a3aa-f476-4a81-bcfb-37823d6a2380"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowaccesstodatasources_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "432c1ff6-6d4b-4235-864d-8f0adb07766e"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowaccesstodatasources_iz_partname1406"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "2324754c-ae37-47bd-a537-47a6dd8741a2"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowaccesstodatasources_iz_partname1406_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "5127c67e-1b1f-4d3d-86ae-5f60ac5d06f3"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "44"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowcopypasteviascript"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c070644c-11b8-4388-8a75-e37d50419f01"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowcopypasteviascript_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "1c135b90-955c-4370-acc3-9b9e46a5cbcd"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowcopypasteviascript_iz_partname1407"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "61007992-2d6d-4ffe-946f-3c771ed8995c"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowcopypasteviascript_iz_partname1407_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "302b19ff-d012-40e7-9523-4d1a9b880565"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "45"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowdraganddropcopyandpastefiles"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "019c294c-aa7d-49fe-8ae5-4b343134adae"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowdraganddropcopyandpastefiles_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "58f52755-5a29-42b5-a0ef-ed78f721b0bb"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowdraganddropcopyandpastefiles_iz_partname1802"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "9438e232-1e24-4ef9-8172-cd24aeee7d09"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowdraganddropcopyandpastefiles_iz_partname1802_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "c126cca3-c02c-4902-a7a8-31c828415440"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "46"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowloadingofxamlfiles"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "5a0d1aac-3fd2-43ff-a62d-984d6d19bf74"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowloadingofxamlfiles_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "125a2825-9a5c-4182-b811-ac9ae0ca46da"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowloadingofxamlfiles_iz_partname2402"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "11475f76-f3ab-4072-b537-35952b6d1537"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowloadingofxamlfiles_iz_partname2402_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "84d50a76-5ccc-4572-9fe5-f0d98f1eed45"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "47"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstouseactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c6b76be0-d76c-4fa7-a786-f04ebd204c1e"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstouseactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f321ba5e-be38-43c7-9316-70c28b08e073"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstouseactivexcontrols_iz_partname120b"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "592432d9-107c-4868-a122-0cac47755fde"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstouseactivexcontrols_iz_partname120b_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "d8907d40-9b9a-4135-a1ab-cf6232b4dd7a"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "48"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstousetdcactivexcontrol"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "e94950f5-7aca-42df-a998-7cc1f2ac657b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstousetdcactivexcontrol_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "34d55f21-9726-4c7d-8e18-b385de7128e3"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstousetdcactivexcontrol_iz_partname120c"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "ed872806-46b5-4805-bd3f-9da40a18fd48"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowonlyapproveddomainstousetdcactivexcontrol_iz_partname120c_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "c9762a0f-0eee-46fd-a756-2df1efa79558"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "49"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptinitiatedwindows"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f5d0050b-317b-4ddf-a49a-bcaff99fc48b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptinitiatedwindows_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "dfb7f434-74e6-4a14-b580-32effc008ff7"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptinitiatedwindows_iz_partname2102"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "ad057fa4-106d-4d54-9b41-a9458fe40737"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptinitiatedwindows_iz_partname2102_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "5fc9516e-5fb6-4160-a2e8-c47c0d869ad1"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "50"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptingofinternetexplorerwebbrowsercontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "779a1859-8ecd-4e92-83a0-1a91745742db"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptingofinternetexplorerwebbrowsercontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "8af4430c-891d-407a-b219-9977ec7a8bdc"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptingofinternetexplorerwebbrowsercontrols_iz_partname1206"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "22f5755e-a449-4897-b192-79b54967af3c"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptingofinternetexplorerwebbrowsercontrols_iz_partname1206_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "ca2d70a7-1bc6-4677-8ded-18410eaa1cc0"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "51"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptlets"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c6511031-1e62-4391-80d8-1184918b0b70"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptlets_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c06455ed-11cc-48a6-bafc-1aa2d5d9ed88"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptlets_iz_partname1209"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "4b29e97e-3934-4e8f-ac75-427fb35a7336"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowscriptlets_iz_partname1209_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "37e31396-0f54-406f-b0b7-219b7bee19da"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "52"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowupdatestostatusbarviascript"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "5c11a974-fe91-461e-a1e9-9a083c06347d"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowupdatestostatusbarviascript_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "633d0f29-eb75-4031-8d2a-5cefa858c0de"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowupdatestostatusbarviascript_iz_partname2103"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "e2f5971e-9ec6-4cb0-bf54-9db8dfc1431a"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowupdatestostatusbarviascript_iz_partname2103_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "7393bca2-7ba1-4935-b7c9-629ae9a37a59"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "53"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowvbscripttorunininternetexplorer"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "88d83801-5126-4df2-bdf4-091ab1c20266"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowvbscripttorunininternetexplorer_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "dd2c1f88-63a3-46ec-946e-6300e2dec96b"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowvbscripttorunininternetexplorer_iz_partname140c"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "46a5138a-2160-4e3c-a7d9-49879220b866"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowvbscripttorunininternetexplorer_iz_partname140c_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "4a83ad70-81cb-4519-99c5-91e8b8b75328"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "54"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowautomaticpromptingforfiledownloads"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "cdc55a43-2662-4bd3-b7b6-13ce95ac263a"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowautomaticpromptingforfiledownloads_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "6f752b2b-1d32-4fff-99b6-dbb5cf11aa61"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowautomaticpromptingforfiledownloads_iz_partname2200"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "a2241c10-40c7-4dc0-8fa5-ab308e34e50e"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowautomaticpromptingforfiledownloads_iz_partname2200_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "09b29f64-b9b1-4aeb-bc56-e5f7d82a3fa2"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "55"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonedonotrunantimalwareagainstactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "fdeb5eb2-3b8b-40c0-93d8-1bd92aecd961"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzonedonotrunantimalwareagainstactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "75cf2038-efd9-4238-8638-3cd70c54beb4"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonedonotrunantimalwareagainstactivexcontrols_iz_partname270c"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "74a293d7-fb51-4fcf-a261-14839e8b848e"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzonedonotrunantimalwareagainstactivexcontrols_iz_partname270c_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "f94ce31a-7114-414a-b339-3ef523bf5356"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "56"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadsignedactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "88efd26b-8537-4183-92b9-f9b28189cf2b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadsignedactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d2ff7a3e-17e8-4b5f-a5ff-07a98dcba9b0"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadsignedactivexcontrols_iz_partname1001"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "01360e5e-3676-46d0-ad6e-ea9dd8855069"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadsignedactivexcontrols_iz_partname1001_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "e5f741e5-36f8-4522-a2c8-d1342b5cc061"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "57"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadunsignedactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c16d034f-bae9-44f1-ac38-f34e60572c52"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadunsignedactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "881b6954-c1b6-4886-99c9-a6d697b62f86"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadunsignedactivexcontrols_iz_partname1004"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "1dce81ed-1614-49bd-ad25-8b5119de6512"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzonedownloadunsignedactivexcontrols_iz_partname1004_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "787b759a-40ae-4045-b5e1-eef5163f1c07"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "58"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "664c4a1d-a6db-4876-85cd-c6315dee9800"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "fa263080-e42e-4d03-86f8-b9b4c54b39aa"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows_iz_partname2709"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "59e8b176-e609-45cb-9de7-b9876d4ffca0"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows_iz_partname2709_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "b2372c90-05f9-4b50-a0ac-8afae924b5ec"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "59"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0114250d-8ff7-4d21-8730-a94d606b93bb"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "88bf8ebe-ec8e-4c13-97c3-b78a88c4f2c6"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows_iz_partname2708"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "eaceef27-6b0a-4c8f-b196-534bbed1f015"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows_iz_partname2708_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "f7223cc5-6d12-49e7-84fe-b73dd7eb4772"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "60"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneincludelocalpathwhenuploadingfilestoserver"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "5d2c2483-0919-471f-aea6-742ebc0751b7"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneincludelocalpathwhenuploadingfilestoserver_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "ea7bf076-44ca-4067-8175-94ba3a959d95"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneincludelocalpathwhenuploadingfilestoserver_iz_partname160a"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "4f4f6264-c85a-4ac4-aafc-6b0a2caa8f74"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneincludelocalpathwhenuploadingfilestoserver_iz_partname160a_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "ac655d6c-169b-4b0b-b49b-d57505e8e104"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "61"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneinitializeandscriptactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9b3f76ac-7fd7-44f5-ba25-e7ad7628659c"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneinitializeandscriptactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f221de07-8b67-40a6-997b-a7fe7d0b5af7"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneinitializeandscriptactivexcontrols_iz_partname1201"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "34d6f1aa-9d3e-49c2-b508-20f54a318537"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneinitializeandscriptactivexcontrols_iz_partname1201_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "7bb163a2-5b3b-499f-8ca6-6f18d4513ad0"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "62"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonejavapermissions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "8893226f-cb2b-4a54-951d-7fd9e446d8ab"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzonejavapermissions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "6548dddf-f3e8-4694-a148-f2388dc975f3"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonejavapermissions_iz_partname1c00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "ceb580c4-a33a-4a74-805a-12cc39a41045"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzonejavapermissions_iz_partname1c00_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "8a52e2cb-2b41-4e8d-b4c8-164f50c8d1f9"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "63"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonelaunchingapplicationsandfilesiniframe"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "bf655cca-dbe4-45c5-8dcd-0e5b0774d146"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzonelaunchingapplicationsandfilesiniframe_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "01ced0e5-7113-470c-b458-024238aed012"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonelaunchingapplicationsandfilesiniframe_iz_partname1804"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "2888f27c-24c9-4b5b-8b35-627652dabdd0"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzonelaunchingapplicationsandfilesiniframe_iz_partname1804_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "864e7ecd-8f4c-4933-80c1-12ecc23b80e1"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "64"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonelogonoptions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "19276f40-6959-4a5b-a4ac-96cbb52126f7"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzonelogonoptions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d4f2448b-2fbe-4e35-aaf8-05cc02e9b60d"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonelogonoptions_iz_partname1a00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "ae22698c-c0f5-44bd-83b8-04c00123cbb4"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzonelogonoptions_iz_partname1a00_65536"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "9254f7c0-9f14-41a6-834b-5bb7ccfef999"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "65"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonenavigatewindowsandframes"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ca02b2bd-6785-478e-9791-88e43c6af070"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzonenavigatewindowsandframes_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "860c4755-790e-4a08-95b6-6983dea2bb57"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonenavigatewindowsandframes_iz_partname1607"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "c11dd70e-d1cf-4625-8215-f2f770f1033a"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzonenavigatewindowsandframes_iz_partname1607_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "fa9c2eec-d06f-4fe0-bce7-df6edf53d304"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "66"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallownetframeworkreliantcomponents"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ec3937a8-a224-4aec-925c-2ac811e454fa"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallownetframeworkreliantcomponents_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d76a0e51-1674-4437-b6ab-52f56e37b0f4"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallownetframeworkreliantcomponents_iz_partname2004"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "7628a07c-c2fe-47df-bdc9-ddb54193ff12"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallownetframeworkreliantcomponents_iz_partname2004_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "d7c71707-d381-4603-8c88-bcaced621249"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "67"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonerunnetframeworkreliantcomponentssignedwithauthenticode"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "16915417-cec2-47ac-a4c7-aa88eb330c29"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzonerunnetframeworkreliantcomponentssignedwithauthenticode_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "ecd7552a-4bcc-402b-9682-2951fb99bf72"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzonerunnetframeworkreliantcomponentssignedwithauthenticode_iz_partname2001"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "503d1093-dbcd-4f2c-82b5-7e8c7f442f72"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzonerunnetframeworkreliantcomponentssignedwithauthenticode_iz_partname2001_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "815b6704-0314-4e20-af8b-85f0a20aba8d"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "68"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneshowsecuritywarningforpotentiallyunsafefiles"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "8ad5de4f-9e33-4ce1-968f-e3bf389faebe"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneshowsecuritywarningforpotentiallyunsafefiles_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "3095b3ac-bdb5-4fbe-b519-8bb6a743c22d"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneshowsecuritywarningforpotentiallyunsafefiles_iz_partname1806"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "415bbee9-1d9c-4685-b252-9f3961db1c62"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneshowsecuritywarningforpotentiallyunsafefiles_iz_partname1806_1"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "97c97395-2cb5-497f-92b9-a0697791b73c"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "69"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneenablecrosssitescriptingfilter"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ac314a32-5856-44da-8b8e-0a1608a34550"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneenablecrosssitescriptingfilter_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "3e7f8d54-1eca-4f2c-b6df-d57402ae1180"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneenablecrosssitescriptingfilter_iz_partname1409"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "e404e440-9061-47f4-a597-b069734c2483"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneenablecrosssitescriptingfilter_iz_partname1409_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "588461a1-1d82-44ea-b861-ef14f752e851"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "70"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneenableprotectedmode"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "5d28419c-79bf-41d9-a42d-d9c0154bd0df"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneenableprotectedmode_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "e3bf154f-65ee-4cab-9639-c9663a1de30e"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneenableprotectedmode_iz_partname2500"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "90e3967a-76d3-4ac3-be30-f1b4ab261a0f"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneenableprotectedmode_iz_partname2500_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "3b049712-8a0e-469c-afb6-2982e6a1e084"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "71"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowsmartscreenie"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "4e480a44-cba2-4743-96f2-4a48af1f6491"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowsmartscreenie_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "cc534149-9335-4b34-b3f0-4b1ddb0948d3"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowsmartscreenie_iz_partname2301"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "e37161d4-4b50-4721-ba18-8ccfb802badc"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowsmartscreenie_iz_partname2301_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "87aa5332-9e59-4042-a562-66bde0cb42c1"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "72"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneusepopupblocker"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "67bf9da5-056a-4671-920f-b73493ef87df"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneusepopupblocker_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "146f4246-54dd-474b-9b67-fee884d7f5fd"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneusepopupblocker_iz_partname1809"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "021e9ca6-c68f-4f26-b526-64e28987cad4"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneusepopupblocker_iz_partname1809_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "85498701-5951-4ecf-bc10-10c0e0c97218"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "73"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowuserdatapersistence"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "91f78f42-d219-4ba5-9f40-960bc530298b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowuserdatapersistence_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5459f189-417f-4734-8c9c-4b87da89229a"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowuserdatapersistence_iz_partname1606"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "9353351b-71a5-4cda-b15c-69577d06b192"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowuserdatapersistence_iz_partname1606_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "a3eb550b-bffd-421a-9fab-43bb5a3370c0"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "74"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowlessprivilegedsites"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "7ae94588-ec6f-45f7-858b-d75c12a4a5ee"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowlessprivilegedsites_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "47bcd0c0-f5e0-4647-9537-41402042f3b7"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowlessprivilegedsites_iz_partname2101"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "9215f369-0108-46ee-8cfe-35e7b0f3e138"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_internetzoneallowlessprivilegedsites_iz_partname2101_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "c678e06f-2453-401e-be81-7365e03d5950"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "75"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_intranetzonedonotrunantimalwareagainstactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "b7d0d5aa-c96a-463e-820f-5d693f694d31"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_intranetzonedonotrunantimalwareagainstactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f5978c52-3b7c-4b27-b61d-f4089f240312"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_intranetzonedonotrunantimalwareagainstactivexcontrols_iz_partname270c"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "9608d2dc-8157-4656-8ec1-22dde362b5d3"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_intranetzonedonotrunantimalwareagainstactivexcontrols_iz_partname270c_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "bcd901e6-70f9-44ae-8236-568d445011a3"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "76"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_intranetzoneinitializeandscriptactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "70a2d479-321c-4b24-9009-6e6b384a754c"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_intranetzoneinitializeandscriptactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "79ad5d2e-0df9-4605-a2fd-dbaaa4a27dfc"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_intranetzoneinitializeandscriptactivexcontrols_iz_partname1201"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "db96341e-7a1f-421c-9a25-569fbae60e2e"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_intranetzoneinitializeandscriptactivexcontrols_iz_partname1201_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "1b50bb9a-ac53-4a80-9a76-a4033fc586c2"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "77"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_intranetzonejavapermissions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "4c399014-5695-4ac5-85de-ecbffa5e2438"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_intranetzonejavapermissions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "b3fed13e-6eb2-4b4f-b832-fb9356e0dbb5"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_intranetzonejavapermissions_iz_partname1c00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "766047c4-b176-4f84-9c3e-a775569c385b"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_intranetzonejavapermissions_iz_partname1c00_65536"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "6083c64d-ca5b-4720-bb25-99bd102fe5e1"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "78"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_localmachinezonedonotrunantimalwareagainstactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f0403eb4-01bc-4850-bf20-3ff85554cfa8"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_localmachinezonedonotrunantimalwareagainstactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c1f0d1c9-5f53-45b9-8d24-f3bf15a70fac"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_localmachinezonedonotrunantimalwareagainstactivexcontrols_iz_partname270c"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "d810bd25-6ea3-4061-8338-4b00a93d9b16"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_localmachinezonedonotrunantimalwareagainstactivexcontrols_iz_partname270c_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "63f7fa89-c615-4c28-aac8-01b8757f7192"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "79"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_localmachinezonejavapermissions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f2952361-64ea-4bb4-8451-50939da60765"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_localmachinezonejavapermissions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f3ad2788-3b37-473d-9358-2c546e2af4a4"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_localmachinezonejavapermissions_iz_partname1c00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "12f9af99-c385-44a3-a52b-ed67427e7d17"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_localmachinezonejavapermissions_iz_partname1c00_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "c2642eeb-29b9-42f8-98ab-a1950c11da09"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "80"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddowninternetzoneallowsmartscreenie"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "d91d4787-aa02-4e4c-b1ee-ca580daf230c"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_lockeddowninternetzoneallowsmartscreenie_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5f7d447b-2e53-4eca-a68f-7e95ecc17042"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddowninternetzoneallowsmartscreenie_iz_partname2301"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "0243da9b-d83c-4680-a749-acac8eee1311"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_lockeddowninternetzoneallowsmartscreenie_iz_partname2301_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "10c6ccbc-1609-45e9-82ec-1eadec0505a9"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "81"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddownintranetjavapermissions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "2c3ee570-b763-475d-be08-21591fa1e2b4"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_lockeddownintranetjavapermissions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d64881dc-2c7b-4e89-8920-717d2b96216e"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddownintranetjavapermissions_iz_partname1c00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "2300727d-204f-4038-9ee2-f3ddcd352e31"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_lockeddownintranetjavapermissions_iz_partname1c00_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "ced3005e-8223-4479-97c8-d93cb21a826b"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "82"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddownlocalmachinezonejavapermissions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "5e0a3244-0e6e-4e43-b354-a1a96c64be93"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_lockeddownlocalmachinezonejavapermissions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4e882cce-b981-43cc-83ea-944798c2c9e9"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddownlocalmachinezonejavapermissions_iz_partname1c00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "ec679486-1e7b-4dcf-bb7a-38c85aeb0862"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_lockeddownlocalmachinezonejavapermissions_iz_partname1c00_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "20985bb1-4d60-4a78-9fef-66216bb8db12"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "83"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszonejavapermissions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "fb4f41ca-ecd2-4602-bf45-198a7370b5e8"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszonejavapermissions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d970b516-9a47-4e47-809b-90663b3bef21"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszonejavapermissions_iz_partname1c00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "03139af8-c1e9-4141-a1c5-7c6acb4c51f9"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszonejavapermissions_iz_partname1c00_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "ecbb0060-e8f1-452e-8d50-a32c39fa076b"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "84"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszoneallowsmartscreenie"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c5caac16-58a0-4729-ab68-948dcb55aa5c"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszoneallowsmartscreenie_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2dd511e9-6c5f-4d9a-8811-41a895fdb58d"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszoneallowsmartscreenie_iz_partname2301"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "5dc4c035-e8d2-4f42-bccb-02686019b46c"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_lockeddownrestrictedsiteszoneallowsmartscreenie_iz_partname2301_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "4fa2e3d8-dcc2-4cde-8b6b-d9f19ad1d039"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "85"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddowntrustedsiteszonejavapermissions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "99312528-e079-4202-bac9-22439ae5f083"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_lockeddowntrustedsiteszonejavapermissions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5eebd65f-5f34-4206-85b0-5c8583031c8e"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_lockeddowntrustedsiteszonejavapermissions_iz_partname1c00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "2cc4318c-a0a5-463e-9e5d-fb53bcff5a83"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_lockeddowntrustedsiteszonejavapermissions_iz_partname1c00_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "bc8937ed-572a-4e8d-bf81-65dfc060e00a"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "86"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowaccesstodatasources"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "95ec56f4-62e8-4610-9dc3-870a7cf1e40d"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowaccesstodatasources_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "dac9bc76-dfc5-481e-978f-67c9b7ef5a2b"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowaccesstodatasources_iz_partname1406"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "a0a710b1-c6ff-4435-86fe-7df756a3d694"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowaccesstodatasources_iz_partname1406_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "222010cd-88aa-4ef9-95cf-8f6ba46ce7de"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "87"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowactivescripting"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "356c8ef2-8e2e-4c55-9622-0cb7978a014c"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowactivescripting_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "978864a6-5f1c-49fc-bfa3-2529d6b73b5d"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowactivescripting_iz_partname1400"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "c33a1480-b83b-428b-a458-9920cdf64db7"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowactivescripting_iz_partname1400_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "2c04ec7c-4e6c-45b0-9b54-f24a98b33146"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "88"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowbinaryandscriptbehaviors"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f2bfd856-ba6c-41d3-9b04-9f2a1de2630f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowbinaryandscriptbehaviors_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "80123e34-5fb9-428e-aad9-116e6314d2d0"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowbinaryandscriptbehaviors_iz_partname2000"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "761dc689-1374-4393-9c94-a6182a00d610"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowbinaryandscriptbehaviors_iz_partname2000_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "fe009e37-504d-440d-9d6d-d9050764edf0"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "89"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowcopypasteviascript"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "74dce335-ae7a-4871-9ab2-f41b3eef8cc1"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowcopypasteviascript_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "8b4a94c7-4c65-4da7-b298-62cf8519911a"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowcopypasteviascript_iz_partname1407"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "df3841d3-1aaa-4f72-b51a-86fc460b5541"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowcopypasteviascript_iz_partname1407_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "78642267-26d1-411e-b71f-9d0c91a4d1b5"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "90"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowdraganddropcopyandpastefiles"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "da721acf-937b-433e-bcf6-1894859f72c6"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowdraganddropcopyandpastefiles_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "50960c70-94e6-41ed-8c9e-fe3ffb8cdee8"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowdraganddropcopyandpastefiles_iz_partname1802"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "e7aa2556-9c46-4f75-9519-1729329f4772"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowdraganddropcopyandpastefiles_iz_partname1802_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "41e2b5b6-e1e0-4989-8ad3-08c542de1dc0"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "91"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowfiledownloads"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "e1464b25-761e-48ef-b0f6-06d888e5290c"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowfiledownloads_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f9f6091a-1232-4a31-a562-368b76be2c5b"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowfiledownloads_iz_partname1803"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "3486f53a-0bea-41cf-9021-1f41b6d85f84"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowfiledownloads_iz_partname1803_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "53dc99f4-d682-4db7-b938-809ab78a5b03"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "92"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowloadingofxamlfiles"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "673a0a63-d96b-4a94-b484-9c5fe97e2c6d"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowloadingofxamlfiles_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "ab6ff3a1-d836-4083-98b4-b3c2b2bed393"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowloadingofxamlfiles_iz_partname2402"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "169c9368-0e89-45f5-87c5-be38b1ba4785"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowloadingofxamlfiles_iz_partname2402_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "4e612b03-4dd2-40a2-b2ed-aa376f755832"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "93"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowmetarefresh"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "6a5799cc-096b-434d-b6f1-3f9005d2ace7"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowmetarefresh_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "ae520677-a501-4e8f-a566-bf3db63ab75a"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowmetarefresh_iz_partname1608"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "b10eb4b7-6c94-4363-9d1c-f46dc9d372dd"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowmetarefresh_iz_partname1608_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "467fd873-4bcb-4927-ab75-63d0808658d5"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "94"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f2d06ce2-76eb-4008-89ed-37abf830dd6c"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "dba960a2-0af2-45aa-a484-033d04755df3"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols_iz_partname120b"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "6ff801c7-7461-4557-9a14-b6c7fd4f8d3c"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols_iz_partname120b_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "c4c0d2fc-a483-442b-abdc-962c3afa68fd"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "95"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "1f38af96-e3bb-4f04-8313-26abfce5f287"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "1246d480-4d67-4de3-9987-b50cdd86ab99"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol_iz_partname120c"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "294c8d17-81db-4baf-89d7-f45074cb547b"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol_iz_partname120c_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "2d2fd6dc-99a9-4524-be13-c81e430e2fea"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "96"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptinitiatedwindows"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ddd43048-e2bb-4cca-ae66-83d3a6c8e3bc"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptinitiatedwindows_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "63db1e51-bc2a-4590-baf4-a243ecf7ae70"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptinitiatedwindows_iz_partname2102"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "67f80d35-27db-4b03-a5bd-fe112d69a682"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptinitiatedwindows_iz_partname2102_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "721230f1-e5d1-49ae-bc0b-9289c06ae0ea"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "97"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "5a8a17da-4c2d-42d0-8267-ace0fb8576af"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "86014267-a704-4c37-bf3f-ce0c9ce894ea"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols_iz_partname1206"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "3862c0d0-3679-437a-96a5-7343b40bdc8f"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols_iz_partname1206_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "93871819-65e3-43a0-bbba-67797e95bc04"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "98"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptlets"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "1bdcc80a-8ff5-4a38-aac8-bcacbe12e230"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptlets_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "dfeb1397-bac9-4178-91f2-08b480f93e6b"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptlets_iz_partname1209"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "af30d7e5-55ba-4507-9a85-435b9f582f36"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowscriptlets_iz_partname1209_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "85151df8-b82b-4424-b315-ab83dbd13c3f"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "99"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowupdatestostatusbarviascript"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "7cd17aa9-725e-4e5d-bfe1-89375be179a3"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowupdatestostatusbarviascript_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4abdc596-f3a9-46be-8ab5-530c649d17b3"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowupdatestostatusbarviascript_iz_partname2103"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "31446b0d-689a-49ca-9f01-0d75e2ba5e27"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowupdatestostatusbarviascript_iz_partname2103_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "f87ed5bd-30fb-498e-8901-91beecab23c0"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "100"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowvbscripttorunininternetexplorer"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "d3d29239-369e-4538-94b8-a7ba50b43fb7"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowvbscripttorunininternetexplorer_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "435fbc42-9351-47b9-baf6-3ea174f6821d"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowvbscripttorunininternetexplorer_iz_partname140c"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "33c0beea-6f55-460e-a98a-7c8aaa07cf43"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowvbscripttorunininternetexplorer_iz_partname140c_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "cddf7b31-f285-4d8d-9b70-103baf21e1bb"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "101"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowautomaticpromptingforfiledownloads"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ae32fc3a-24a5-4f7a-b373-34ddbc885da7"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowautomaticpromptingforfiledownloads_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a194c9ff-0471-4377-b32d-3ef55894ee15"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowautomaticpromptingforfiledownloads_iz_partname2200"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "d5fddedb-0b31-4cfb-972b-8549faf8db08"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowautomaticpromptingforfiledownloads_iz_partname2200_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "5669a9e0-b202-49e7-a583-76a1054f1647"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "102"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedonotrunantimalwareagainstactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "bbeb51e3-4db0-470c-92a9-bc0c220735ec"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedonotrunantimalwareagainstactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d63615a2-e468-4154-a09d-795668483026"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedonotrunantimalwareagainstactivexcontrols_iz_partname270c"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "27d775e8-758c-46af-b637-b957368bd1dc"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedonotrunantimalwareagainstactivexcontrols_iz_partname270c_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "7577a0a5-853c-4007-ab87-a039692117b3"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "103"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadsignedactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "d214f19a-bf82-4bb2-9c51-35df9f591af0"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadsignedactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a39dc54d-c4a1-4c35-b61e-0c55ce4eaa69"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadsignedactivexcontrols_iz_partname1001"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "4cf3521b-0ef9-4dba-b72b-ed697261628e"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadsignedactivexcontrols_iz_partname1001_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "693b682d-7860-4265-a4ec-d60f88adad14"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "104"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadunsignedactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "6a202539-cf30-4b8b-8d87-1a279141960c"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadunsignedactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "78650d1c-b4b1-4e26-8acc-1a690e8889f1"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadunsignedactivexcontrols_iz_partname1004"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "342642ce-19cc-4316-9017-752901b321e5"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonedownloadunsignedactivexcontrols_iz_partname1004_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "8812697e-78be-4f4a-8f4f-e1254b068476"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "105"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "b3b74b1f-46d9-485f-bcb6-8f215322ab02"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "858905ed-8e84-4ded-be83-7abcc522da14"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows_iz_partname2709"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "eab26145-82fa-4c26-9f39-2192dc5fa981"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows_iz_partname2709_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "5862b59b-4d04-41f2-8ea6-5ca7a2b9e7e3"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "106"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c15c0090-3793-4aa4-a244-7b2cd447e127"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "0b7f9138-9a0d-48c1-beb4-887600064019"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows_iz_partname2708"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "fad761f2-45a5-4e77-9508-c119f3cf9eeb"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows_iz_partname2708_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "31fba84a-5b83-4029-ae3e-9873e4c2a5ef"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "107"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "766d6409-a9a3-485e-b98f-4ac62cc7ef93"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "8a70109a-b58d-48c8-a09b-e234d6ea1dbf"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver_iz_partname160a"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "47de1be9-bbc3-4109-969a-8aa6e15b0980"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver_iz_partname160a_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "9ab05829-3254-4dd6-b8c6-85fba75b8f6a"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "108"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneinitializeandscriptactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "857107bf-20e9-4383-a6e3-833fcfa2c8b2"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneinitializeandscriptactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "21a93ca8-784b-4f2f-9ee1-5c586aef61a8"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneinitializeandscriptactivexcontrols_iz_partname1201"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "ee5d8eb8-199e-4a1c-815f-d614035a9d1e"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneinitializeandscriptactivexcontrols_iz_partname1201_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "74631b65-ca3b-4724-bad7-85f4ceb2e419"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "109"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonejavapermissions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "98dae3c5-2eca-4a90-a156-44817fd7aebb"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonejavapermissions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "375b828d-7558-4819-a71b-8f92a0daa83c"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonejavapermissions_iz_partname1c00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "56a45162-ad8d-41b4-988a-c1455c085833"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonejavapermissions_iz_partname1c00_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "8ec4cb28-90cd-4d45-a033-2e7ec6b2c2eb"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "110"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelaunchingapplicationsandfilesiniframe"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "de059dd2-537c-4d4e-8608-25cefda7dd6f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelaunchingapplicationsandfilesiniframe_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "0aabc9c0-995a-4f48-bd6e-e91bb02d9589"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelaunchingapplicationsandfilesiniframe_iz_partname1804"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "adeb61f3-3a7b-4d69-a3ba-eca58e4700b4"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelaunchingapplicationsandfilesiniframe_iz_partname1804_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "e7835db8-5baa-4bf5-8e09-023e3e315f91"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "111"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelogonoptions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "2d4c410d-0abd-47ef-a7f4-66c1de47e5d7"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelogonoptions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2f6c885b-6ecf-4d71-bfa0-5c983990239c"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelogonoptions_iz_partname1a00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "a64741a6-ce32-499e-9541-5e42d52129ca"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonelogonoptions_iz_partname1a00_196608"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "90e7d18f-86b1-4e57-83d5-97998b4f5821"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "112"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonenavigatewindowsandframes"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "b12d180c-b133-4133-9637-b7b772a5c091"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonenavigatewindowsandframes_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2f513b52-c1ea-4beb-bfb6-5ec833a3ecd8"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonenavigatewindowsandframes_iz_partname1607"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "c3e2c4da-dcba-4e06-b821-675b9cd04b16"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonenavigatewindowsandframes_iz_partname1607_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "670e7eb3-e49a-4314-baa8-dae1ea6ad3b0"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "113"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallownetframeworkreliantcomponents"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "da6e0aca-768d-4fb3-9bab-229cfaf20b94"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallownetframeworkreliantcomponents_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "0e758fa3-fefa-41a2-9afa-f953c16a1d38"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallownetframeworkreliantcomponents_iz_partname2004"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "81309b25-c08e-43cf-9425-f48a1e3f19b8"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallownetframeworkreliantcomponents_iz_partname2004_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "4828f6dc-5a78-49c5-8da2-dfc8441f3188"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "114"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "110296d5-7607-4218-a177-5b4c3f025c27"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2626263a-fbb5-4af3-a673-2a058027cc0c"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode_iz_partname2001"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "2de3af35-7964-47dc-950b-d90e6aeb1314"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode_iz_partname2001_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "81a386e2-fbd3-4799-b569-c4008d7ea16a"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "115"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunactivexcontrolsandplugins"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "23ba706c-83ae-4986-8be5-e06c9d65529d"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunactivexcontrolsandplugins_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "09f9c09c-3851-4491-8822-70c91cb991d3"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunactivexcontrolsandplugins_iz_partname1200"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "3a7a78b0-325c-4201-8099-1aa0c15f8331"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonerunactivexcontrolsandplugins_iz_partname1200_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "881f4a9d-7d53-49f8-903e-a03f4ef5cda1"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "116"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "058c40c1-a88e-465d-8076-64434d3fb509"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "8d281a1e-7fad-4458-9740-9a5e3f47ec1f"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting_iz_partname1405"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "ed4c23c4-155b-4ee7-9a15-d12f65072bcd"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting_iz_partname1405_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "5ef31ca1-2e48-4a3a-80ad-f33c720879a8"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "117"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptingofjavaapplets"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ac3e8c90-98ad-4548-adf0-4927f6727d25"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptingofjavaapplets_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "45782168-b1a6-4397-bd21-35c13c7d2ee1"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptingofjavaapplets_iz_partname1402"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "22c7e8a7-3d26-4106-a2aa-dd2ee38993f8"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszonescriptingofjavaapplets_iz_partname1402_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "f60727ed-35ae-4928-a03b-c8910982727c"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "118"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f440ec14-238b-4e8c-aa48-2627a3d9d9b7"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "8e23bcab-8298-46dc-999e-094dc6353723"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles_iz_partname1806"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "8bfbd3b8-ccdc-41d5-ba93-1522c76075f6"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles_iz_partname1806_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "8eb40701-c13a-4353-8c93-93b23b2ce859"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "119"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenablecrosssitescriptingfilter"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "96a360c0-d2ab-4ce1-829c-2ad4287abed6"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenablecrosssitescriptingfilter_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "38e5caf6-65ee-45a6-bb7b-d38f1a5ac9af"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenablecrosssitescriptingfilter_iz_partname1409"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "984265f3-9ffa-4524-b81a-4bc3568a5ffb"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneenablecrosssitescriptingfilter_iz_partname1409_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "080684c6-900a-44b8-b85d-a207762047d4"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "120"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneturnonprotectedmode"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "fb0034d2-4191-423e-bc41-085307c8f979"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneturnonprotectedmode_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "7d4c1628-6122-410d-a7ba-96d73640ca11"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneturnonprotectedmode_iz_partname2500"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "b1fd0605-c094-4269-b088-2cc163259f3f"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneturnonprotectedmode_iz_partname2500_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "39325803-9726-44ff-9380-21f1f22eff34"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "121"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowsmartscreenie"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "07438974-5aad-4a72-9862-2bd94d4cbfbb"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowsmartscreenie_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "abb20ea0-07d4-484d-9750-9b378a7e2485"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowsmartscreenie_iz_partname2301"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "e4377881-f1f5-48dc-86fd-3b215e78eb12"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowsmartscreenie_iz_partname2301_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "a6b9a5bc-2a19-4ebd-99dd-90b223ec3754"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "122"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneusepopupblocker"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "4ceba740-edbe-4ac8-8b49-344b1eac858a"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneusepopupblocker_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d0dc2769-4a43-438e-a5da-c57495006c24"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneusepopupblocker_iz_partname1809"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "4112fe7c-0d66-414d-9722-909d7986cbb4"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneusepopupblocker_iz_partname1809_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "84ed4f9e-e673-4bb8-a98d-7d1a71277775"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "123"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowuserdatapersistence"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "e22f5874-2740-4df9-b27d-6d24bba23dac"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowuserdatapersistence_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a9968a82-38ac-4a24-b401-ea9fee143cb4"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowuserdatapersistence_iz_partname1606"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "f58fb7a8-9497-43ab-890d-7e23f6434d5e"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowuserdatapersistence_iz_partname1606_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "67525dbf-95f3-418c-b3bd-efcb109a14e2"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "124"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowlessprivilegedsites"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "7e1c971a-165b-4320-9aa8-9e1b3543b11d"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowlessprivilegedsites_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "9626c90c-2f62-460e-86c8-b6653ad69b2a"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowlessprivilegedsites_iz_partname2101"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "cbb2d430-3e75-4c9e-a331-8fd26bbb04f7"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_restrictedsiteszoneallowlessprivilegedsites_iz_partname2101_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "313f9a54-e552-4c7a-91e4-e33d428bf0cf"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "125"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonedonotrunantimalwareagainstactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "455f4100-3dd4-4f7e-a38e-752c2ae54d92"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonedonotrunantimalwareagainstactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f75bd4d6-1256-46b5-9473-a9fb93d4063a"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonedonotrunantimalwareagainstactivexcontrols_iz_partname270c"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "ceab1038-17a6-4f2c-9cdb-81c564e5d1aa"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonedonotrunantimalwareagainstactivexcontrols_iz_partname270c_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "e4a7e1d4-976f-4864-8381-f2e9c6762515"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "126"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszoneinitializeandscriptactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ef3cc6c0-604d-4c6d-9863-4bc2196b6fd4"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszoneinitializeandscriptactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "286302f0-af95-46c7-896d-22a30f5274e9"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszoneinitializeandscriptactivexcontrols_iz_partname1201"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "f397e318-87a2-45b6-908a-62dbaa6d8bb6"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszoneinitializeandscriptactivexcontrols_iz_partname1201_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "db7a67cc-7f8a-44b1-964b-d4d41f0483eb"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "127"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonejavapermissions"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "33491dd6-c0ac-42a0-8cfa-68ee914e1975"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonejavapermissions_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d79929fa-ff0b-46b4-99a4-1aebccb4f315"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonejavapermissions_iz_partname1c00"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "7f309422-9ef2-488d-b6b6-b40747526166"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_trustedsiteszonejavapermissions_iz_partname1c00_65536"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "98d844de-ee1d-4d25-8224-ecef906a1255"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "128"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_includeallnetworkpaths"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "6098ac62-02c7-4cfb-92cc-bdb0e551da7a"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_includeallnetworkpaths_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "ce8c747d-46f1-4497-9702-7b0f0c475f96"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "129"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_allowcertificateaddressmismatchwarning"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "bfc2469a-3d4f-463a-ab7c-45876156a9ab"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_allowcertificateaddressmismatchwarning_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "e26cdaaa-f4ca-4707-93e3-53d6cd39d9ba"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "130"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_disableignoringcertificateerrors"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "066c07fb-49f6-44ee-ae27-3bf411dd9a11"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_disableignoringcertificateerrors_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "65273000-e7ea-4529-a261-e6092b617720"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "131"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_removerunthistimebuttonforoutdatedactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c4261d56-8c13-45a0-856b-7944ecf00c34"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_removerunthistimebuttonforoutdatedactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2b2b12a8-72aa-4c52-aa0a-828c1bf97546"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "132"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_donotblockoutdatedactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f1858514-baca-46d1-b52f-82aa6cadb7fe"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_donotblockoutdatedactivexcontrols_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f986b9c4-ed24-42aa-b020-5899bdfed561"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "133"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_consistentmimehandlinginternetexplorerprocesses"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "cdc304e6-0f5c-4c62-b6dd-ec036fa8aee5"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_consistentmimehandlinginternetexplorerprocesses_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a9771bfa-6da2-4129-b386-2c8f90cb5524"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "134"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_mimesniffingsafetyfeatureinternetexplorerprocesses"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "d0d412e9-9d5a-42a0-9229-9eb6d6ec63e1"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_mimesniffingsafetyfeatureinternetexplorerprocesses_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "6d89e5a5-cb1e-4950-bdfa-6ad217686baf"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "135"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_mkprotocolsecurityrestrictioninternetexplorerprocesses"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9822f52b-ef59-4b0c-b6c8-f81d69e6dac1"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_mkprotocolsecurityrestrictioninternetexplorerprocesses_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "df16e893-18a9-40c0-8dbb-a9fb8ac28e85"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "136"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_notificationbarinternetexplorerprocesses"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c7bfcc02-e667-418f-93c6-9e0064273d9e"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_notificationbarinternetexplorerprocesses_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4099f2ef-8fe3-4191-8e5f-296ee1645dbd"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "137"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_protectionfromzoneelevationinternetexplorerprocesses"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "8267f965-3f44-4a1c-b488-9ba35129586e"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_protectionfromzoneelevationinternetexplorerprocesses_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "9ca63dcf-6138-41df-b6dd-08c9e925b619"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "138"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictactivexinstallinternetexplorerprocesses"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "1dacd424-efbf-4893-b35e-b8cbdf8bb89f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictactivexinstallinternetexplorerprocesses_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "e0c57cbd-032a-450c-98d8-5e6e00b6086a"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "139"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_restrictfiledownloadinternetexplorerprocesses"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "8bb2da57-5a37-4311-ab6e-2dabbe43b5fb"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_restrictfiledownloadinternetexplorerprocesses_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "af1118fb-d0a3-47a0-803b-9f63d7365f73"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "140"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_scriptedwindowsecurityrestrictionsinternetexplorerprocesses"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0432b17c-68f2-4710-94b8-3497efb2e67e"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_scriptedwindowsecurityrestrictionsinternetexplorerprocesses_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "33bf90cc-5d84-473b-8448-79da7d10b6d0"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "141"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_allowfallbacktossl3"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9aa8291a-b322-4def-bf16-55b111ad5fd8"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_allowfallbacktossl3_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f93fb9f3-0a47-45b4-b1b9-8ff893245051"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_allowfallbacktossl3_advanced_enablessl3fallbackoptions"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "b5153ee9-65a5-4ee2-8d07-9473fad5a758"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_allowfallbacktossl3_advanced_enablessl3fallbackoptions_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "3426a40c-b728-438b-b754-803480809d82"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "142"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_disablebypassofsmartscreenwarnings"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c5e7b1e7-85c1-4543-818e-07345972af11"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_disablebypassofsmartscreenwarnings_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2ce49fc2-a220-43b4-b86a-1241166ff227"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "143"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_disablebypassofsmartscreenwarningsaboutuncommonfiles"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f1e79abe-3004-4a83-bccb-a67e05b103a5"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_disablebypassofsmartscreenwarningsaboutuncommonfiles_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d8b00068-c20a-4593-bdb3-e5cf34206a44"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "144"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_preventmanagingsmartscreenfilter"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "90a0dd5e-66f1-45e7-a489-234f001e9d44"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_preventmanagingsmartscreenfilter_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "222b48ba-7b65-41d1-9df7-31a980319a33"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_preventmanagingsmartscreenfilter_ie9safetyfilteroptions"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "77225329-11ee-4e66-a2b2-2cea33911946"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_internetexplorer_preventmanagingsmartscreenfilter_ie9safetyfilteroptions_1"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "35463b26-6fc1-4f0c-83d1-880dfd1dc62b"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "145"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_preventperuserinstallationofactivexcontrols"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "b9c0e207-8aea-4da3-8955-6e851eac9e9d"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_preventperuserinstallationofactivexcontrols_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2e4c7aff-e926-4749-9556-d388b8e0422a"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "146"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_donotallowuserstoaddsites"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "edcda89b-a9b7-4679-9167-5b7a12a6da72"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_donotallowuserstoaddsites_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "3bcd3a0d-939f-427a-9239-6c9e99bc512c"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "147"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_donotallowuserstochangepolicies"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ffc9627d-48c8-4896-a146-99acf76ae041"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_donotallowuserstochangepolicies_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c42f59a1-c148-4a3b-9a4d-cc0463aa184d"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "148"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_securityzonesuseonlymachinesettings"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "694b71db-f360-40d0-ba4e-bcf78f703b32"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_securityzonesuseonlymachinesettings_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "009d0a17-856a-4d81-bd0f-bb9d76a97091"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "149"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_specifyuseofactivexinstallerservice"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "71a43eae-31d8-42f0-ad34-c410eea941ec"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_specifyuseofactivexinstallerservice_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d78b9959-3ab2-4d28-9ce4-e4688275534e"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "150"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_disablecrashdetection"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "602521cd-080c-49b2-ab47-9ff884fe113b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_disablecrashdetection_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f29dd58c-3466-4248-95c8-65d4cdc1a146"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "151"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_disablesecuritysettingscheck"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "8bb53e95-5d66-41bd-9f69-25f6eb1d596a"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_disablesecuritysettingscheck_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "373d7a60-1612-4992-8396-a34fac21854f"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "152"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "user_vendor_msft_policy_config_internetexplorer_allowautocomplete"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9ddcbf3f-db2c-4e54-bade-68ab3cf49284"
#           }
#           choice_setting_value = {
#             value = "user_vendor_msft_policy_config_internetexplorer_allowautocomplete_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "0b5d585a-7504-4265-9032-5181aab04ec9"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "153"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableblockatfirstseen"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "25964f56-42f0-4a8f-8634-8661efa1183e"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableblockatfirstseen_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "fbb207a9-f8f4-47b6-bf6a-043c90e405d6"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "154"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_realtimeprotection_disablescanonrealtimeenable"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "e2fb44b5-8010-48a8-bf02-39a346da7476"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_realtimeprotection_disablescanonrealtimeenable_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "6ace25a1-04a1-4660-8a0a-519f3feaa69d"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "155"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disablepackedexescanning"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ab9c8e12-0db5-454a-8c65-f50882ea360e"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_scan_disablepackedexescanning_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "8138a74a-1124-4687-a02d-a85b0ee94f39"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "156"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableroutinelytakingaction"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "fb94855b-49a3-43e5-b542-a0fb47f90293"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_admx_microsoftdefenderantivirus_disableroutinelytakingaction_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "11a14bfc-6fbd-4019-8fcd-8462138b6847"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "157"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotedesktopservices_donotallowpasswordsaving"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "b3e2557b-3eda-486d-834b-19725f5001cf"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotedesktopservices_donotallowpasswordsaving_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "880c4baa-d518-4e37-b8c3-d4d4a6736700"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "158"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotedesktopservices_donotallowdriveredirection"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "fab6de46-bbae-4bdc-a3e2-64a697805da6"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotedesktopservices_donotallowdriveredirection_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a47d5ae9-b910-4f86-81ec-1ea269b41d5c"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "159"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotedesktopservices_promptforpassworduponconnection"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "03e5058a-7d2a-4630-9e76-d131e87fde68"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotedesktopservices_promptforpassworduponconnection_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "8663e834-3067-424a-9883-12704e0b4de4"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "160"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotedesktopservices_requiresecurerpccommunication"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "93cd8906-a354-4f73-9856-03e99919c7ef"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotedesktopservices_requiresecurerpccommunication_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5e5b8f87-d95e-4a81-a9a7-71e82574773a"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "161"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "135561ca-4d15-4cbe-89b2-97d4c5753e3b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "785ef666-a53f-4fe2-9fc8-fd7496cc2253"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_ts_encryption_level"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "6959d4d0-2abc-4e38-a1a8-5a2414f83438"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_ts_encryption_level_3"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "7b1fd837-a300-4093-b18e-516e06856e80"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "162"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_internetexplorer_disableenclosuredownloading"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "e4eb8bc8-c1ce-42ee-b538-fb329995cdaa"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_internetexplorer_disableenclosuredownloading_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5e0e3ce4-2552-4d5f-9334-1aa6ddfe763a"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "163"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_windowslogon_allowautomaticrestartsignon"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "59923e6a-8be8-487b-be33-d16945019f3e"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_windowslogon_allowautomaticrestartsignon_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4d5c053f-ce79-43a6-99cf-5a40f0f40951"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "164"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "3ee8bd84-8aa3-4a15-acaf-4a7f07beb3d9"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c466d0b7-2b9d-46ab-a83d-828f7ed03a8a"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging_enablescriptblockinvocationlogging"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "4249bdec-abe4-44d6-bd4a-de2767d32221"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_windowspowershell_turnonpowershellscriptblocklogging_enablescriptblockinvocationlogging_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "5ad1739f-dfbe-4ddb-bd50-1f6b4cdeb7c5"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "165"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_client"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "19dfe120-a960-4b84-b70b-ad78cec29dc0"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_client_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a2150c05-0aa9-4268-b275-52609c4c9a18"
#             }
#             children = []
#           }
#         }
#       },
#       // valid to here no 400
#       {
#         id = "166"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_client"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "39d8d798-d8a6-4691-afc8-b984af5f946d"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_client_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5d365938-5333-478f-8a9b-4c22b0494e40"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "167"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotemanagement_disallowdigestauthentication"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ce490457-fbd7-45fa-8660-1574ee2581c5"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotemanagement_disallowdigestauthentication_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d2043e8c-e101-4b61-821b-d4679aa67aa7"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "168"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_service"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "156410d6-a45a-42b5-80e8-a9013dc9e0ca"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotemanagement_allowbasicauthentication_service_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5d31fd96-97fc-4f72-bbe2-a7bd08847bf9"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "169"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_service"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "40e064d8-7217-462a-921d-99a1061d00ac"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotemanagement_allowunencryptedtraffic_service_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "e75dbcbd-0ebd-44d2-938e-e53a9d7e26b5"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "170"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_remotemanagement_disallowstoringofrunascredentials"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "3fadebc5-93a1-430c-8ea6-10b32da78d67"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_remotemanagement_disallowstoringofrunascredentials_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "3decddb5-ef46-4f45-8c3b-bdc68a0d94bc"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "171"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_accountlogon_auditcredentialvalidation"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "dc9e4281-73cc-4b06-acbc-c1a9c9712e03"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_accountlogon_auditcredentialvalidation_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "9cacc02a-5a9c-4602-9d1f-90d0e9248fab"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "172"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditaccountlockout"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "d806ba78-3597-42c8-a4b4-cf614e922fdd"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditaccountlockout_2"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "68472ccc-92fa-460f-8f47-6c72736ead3c"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "173"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditgroupmembership"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "b09a26f2-df25-414e-b6cd-8a258cb5529c"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditgroupmembership_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "0b31c6e9-727e-452b-9e03-867cd5b2ea04"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "174"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditlogon"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "378a7698-72ea-4698-89bd-ea896ac7c60f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditlogon_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "611981b3-ace0-4095-bfa4-0eef0cd324a7"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "175"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_policychange_auditauthenticationpolicychange"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "4efc1402-689c-4fcd-8edb-e90e2817cff6"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_policychange_auditauthenticationpolicychange_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4b329450-ab02-4afd-a796-1fb459cdfbba"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "176"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_policychange_auditpolicychange"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "244508d9-f362-4906-a8d7-35316b2309d3"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_policychange_auditpolicychange_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "fa2e7b55-b9fa-4405-a68f-cc8031dfed5c"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "177"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_objectaccess_auditfileshare"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "dcf144ca-f84c-4a41-bcb5-834b72866506"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_objectaccess_auditfileshare_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "587dcef6-fb38-4368-8ae8-bd6577c46947"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "178"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditotherlogonlogoffevents"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "1e95b34a-2462-4f69-ab30-ce0edb19cb6a"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditotherlogonlogoffevents_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "00d09d39-33e0-4206-95d0-be578e19bc15"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "179"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_accountmanagement_auditsecuritygroupmanagement"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "2a2e49e2-5989-4d49-95bd-cfe5282a0524"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_accountmanagement_auditsecuritygroupmanagement_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "baa6e87d-b801-445e-b820-950278e34353"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "180"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_system_auditsecuritysystemextension"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "d313d392-02c2-4ccb-9e10-8d9935a78222"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_system_auditsecuritysystemextension_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f4590ec1-350d-4aee-8718-d0f37c56347a"
#             }
#             children = []
#           }
#         }
#       },
#      {
#         id = "181"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditspeciallogon"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0054990d-379d-4343-b777-f21bbb70597d"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_accountlogonlogoff_auditspeciallogon_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5b7bb4b7-f761-4b6e-81c9-c1fc2742c483"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "182"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_accountmanagement_audituseraccountmanagement"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0db04fff-a80e-4bf8-b898-51e35ab5c3a7"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_accountmanagement_audituseraccountmanagement_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "ecd08d2b-e997-42f6-ac82-6d4342f2c6fc"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "183"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_detailedtracking_auditpnpactivity"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "8a908e87-fed9-4417-a1d5-079b7d77a005"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_detailedtracking_auditpnpactivity_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "79da9396-611d-4aff-a551-bdba591c08f5"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "184"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_detailedtracking_auditprocesscreation"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c9b9abb0-325d-4013-a0b9-d7006cd1b9fa"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_detailedtracking_auditprocesscreation_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "91722f14-b8d7-4036-8d7d-ea859e2e4a93"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "185"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_objectaccess_auditdetailedfileshare"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "948d2bee-b8d6-48f5-b3e4-ddd506aa2d4d"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_objectaccess_auditdetailedfileshare_2"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "e585b907-cbd7-4522-9768-1bad33ec788c"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "186"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_objectaccess_auditotherobjectaccessevents"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "154e7c5e-2391-4de3-b6d2-1b1ac250e32a"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_objectaccess_auditotherobjectaccessevents_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f9647747-844c-4d2c-9e1c-ee3179431b3d"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "187"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_objectaccess_auditremovablestorage"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "47007fa1-449f-465a-82f8-a5eb4184b8b4"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_objectaccess_auditremovablestorage_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4ad4e188-e43b-4841-9fd4-30f1fa116574"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "188"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_policychange_auditmpssvcrulelevelpolicychange"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c16994d2-a8a3-4a77-8c1b-63efd0ed51ac"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_policychange_auditmpssvcrulelevelpolicychange_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "0f169859-c071-409a-a73f-b1cd35b51d3d"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "189"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_policychange_auditotherpolicychangeevents"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "422511ed-5047-4021-b47a-a1f4b4b4fc8b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_policychange_auditotherpolicychangeevents_2"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2048b081-4a17-4dfc-84e5-44b5ed2e6fb4"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "190"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_privilegeuse_auditsensitiveprivilegeuse"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "a803d584-24f6-4ebc-b6d8-14332f8f6dc5"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_privilegeuse_auditsensitiveprivilegeuse_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "3d27afec-e355-4583-9778-227d4774830d"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "191"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_system_auditothersystemevents"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "51516421-c4e2-4a0c-a2e7-515ed2a2ae95"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_system_auditothersystemevents_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "69978b8d-a8ec-469a-83ff-388f8ee4eded"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "192"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_system_auditsecuritystatechange"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c3ff9e54-e336-420a-850c-29b7ec7f55e0"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_system_auditsecuritystatechange_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "396c6dfe-514e-43a8-a6d4-dcc738dbb710"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "193"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_audit_system_auditsystemintegrity"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "4e60a1bf-e9cf-44a1-8360-6273e3f03c58"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_audit_system_auditsystemintegrity_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5c494b10-2e0d-48b6-95d4-60ab7e6a5777"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "194"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_dataprotection_allowdirectmemoryaccess"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "78d98619-3065-4a73-bda1-a3d74d6fbe52"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_dataprotection_allowdirectmemoryaccess_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a49d68ef-18a8-4087-8949-e929dd1227c0"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "195"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_allowarchivescanning"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "3002591e-bdd2-48b0-8fc9-97944b68eb86"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_allowarchivescanning_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d4c23dea-bb99-49da-b0ca-4ac2d09c8305"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "196"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_allowbehaviormonitoring"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "5a988de3-4090-40f4-b373-83cbd8fc3633"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_allowbehaviormonitoring_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "741546ae-f93b-45a1-a449-228ca3d0cd17"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "197"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_allowcloudprotection"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "b0298ce5-1147-4bcb-9744-cf2034b77ece"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_allowcloudprotection_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a5604d1e-fa47-49d4-9c44-109f036ac744"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "198"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_allowfullscanremovabledrivescanning"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "5864d708-12e9-4542-bb82-26a2c6a22423"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_allowfullscanremovabledrivescanning_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4a00449c-872d-48c7-9066-91260673100c"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "199"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_allowonaccessprotection"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "06bfb0ae-9fd1-4ffb-869e-02ef1b192d51"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_allowonaccessprotection_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a4dc4883-603b-4eed-87f1-1c5b9087a366"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "200"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_allowrealtimemonitoring"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "20d0a58c-5e56-4da5-8e13-311651f8e224"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_allowrealtimemonitoring_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "8dfeff00-7c58-415b-83fd-7e3161a4628e"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "201"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_allowioavprotection"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "cf23556b-07ac-4ac8-8a4e-d1ba9c0cafe0"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_allowioavprotection_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "3d7513f0-8ac5-436a-a122-4b35902ef62f"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "202"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_allowscriptscanning"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ffc85a57-814b-4548-b812-60f5f316d6b0"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_allowscriptscanning_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "491e428f-d2af-4a6f-b347-c8ea0f5d9f2d"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "203"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "55754f28-2701-4c04-84e9-522c85d07d92"
#           }
#           group_setting_collection_value = [
#             {
#               setting_value_template_reference = null
#               children = [
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockexecutionofpotentiallyobfuscatedscripts"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockexecutionofpotentiallyobfuscatedscripts_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 },
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficecommunicationappfromcreatingchildprocesses"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficecommunicationappfromcreatingchildprocesses_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 },
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockallofficeapplicationsfromcreatingchildprocesses"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockallofficeapplicationsfromcreatingchildprocesses_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 },
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockwin32apicallsfromofficemacros"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockwin32apicallsfromofficemacros_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 },
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockjavascriptorvbscriptfromlaunchingdownloadedexecutablecontent"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockjavascriptorvbscriptfromlaunchingdownloadedexecutablecontent_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 },
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockuntrustedunsignedprocessesthatrunfromusb"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockuntrustedunsignedprocessesthatrunfromusb_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 },
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockadobereaderfromcreatingchildprocesses"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockadobereaderfromcreatingchildprocesses_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 },
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockcredentialstealingfromwindowslocalsecurityauthoritysubsystem"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockcredentialstealingfromwindowslocalsecurityauthoritysubsystem_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 },
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficeapplicationsfrominjectingcodeintootherprocesses"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficeapplicationsfrominjectingcodeintootherprocesses_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 },
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficeapplicationsfromcreatingexecutablecontent"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockofficeapplicationsfromcreatingexecutablecontent_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 },
#                 {
#                   odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                   setting_definition_id               = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockexecutablecontentfromemailclientandwebmail"
#                   setting_instance_template_reference = null
#                   choice_setting_value = {
#                     value                            = "device_vendor_msft_policy_config_defender_attacksurfacereductionrules_blockexecutablecontentfromemailclientandwebmail_block"
#                     setting_value_template_reference = null
#                     children                         = []
#                   }
#                 }
#               ]
#             }
#           ]
#         }
#       },
#       {
#         id = "204"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_cloudblocklevel"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "1ab7e650-f260-4772-ae68-ce4dbc8c5b68"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_cloudblocklevel_2"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "511ad546-e0a3-4f95-9f04-0a1a33c0c3d4"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "205"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_cloudextendedtimeout"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ff560864-55c4-437d-9789-a58d8ae3cc7e"
#           }
#           simple_setting_value = {
#             odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
#             value      = 50
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "1bfe1ada-4a8d-4008-8a74-c1eaf0d4491d"
#             }
#           }
#         }
#       },
#       {
#         id = "206"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_defender_configuration_disablelocaladminmerge"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "15d685f6-7ffe-46bb-b9c1-0e829ad84915"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_defender_configuration_disablelocaladminmerge_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "87f4a3e2-e40a-4294-bbd2-d34f01e85f35"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "207"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_defender_configuration_enablefilehashcomputation"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0dc378f5-a198-4a42-80e8-75af8e8b286f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_defender_configuration_enablefilehashcomputation_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "46b46a1e-9452-417c-9a60-e0bbd6e00d53"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "208"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_enablenetworkprotection"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "154571c7-86a5-4352-bd15-aaceecfbb602"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_enablenetworkprotection_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f48766e0-9529-4d20-9834-b96e1af90ded"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "209"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_defender_configuration_hideexclusionsfromlocaladmins"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "25815dc7-b95e-4dc7-8b64-5c5fecb19731"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_defender_configuration_hideexclusionsfromlocaladmins_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c07e8b47-efbf-4242-b8bd-539287103818"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "210"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_puaprotection"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "8e3b779d-a5bb-41c5-80c2-555390074f87"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_puaprotection_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "87022f0a-33d7-475e-b3ba-d19348c1d0a4"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "211"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_realtimescandirection"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "7142d58a-04d0-4c1d-a9f4-c668f33c5ace"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_realtimescandirection_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "e77a3d5a-90c1-4a0a-880c-44a410e4baff"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "212"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_defender_submitsamplesconsent"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "fc5849c3-b3b0-4899-9d65-3109558530d7"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_defender_submitsamplesconsent_3"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "156820b1-192d-4c58-a143-0150c6398522"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "213"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_deviceguard_configuresystemguardlaunch"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "6b52aa2d-49f4-4bf0-a71c-7e5c41a393b2"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_deviceguard_configuresystemguardlaunch_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "50d2362b-d428-4242-acd5-5907779dc500"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "214"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_deviceguard_lsacfgflags"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "df5e8eb6-5e18-40dc-b550-8dc063c456f0"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_deviceguard_lsacfgflags_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "18184526-f1c9-49e1-8ec8-d920bf156ad0"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "215"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_deviceguard_enablevirtualizationbasedsecurity"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "2af120f2-a63a-49f4-a4d8-555f15301ea0"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_deviceguard_enablevirtualizationbasedsecurity_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "3df81861-70c6-4376-aa5c-cd33a2d48f7d"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "216"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_deviceguard_requireplatformsecurityfeatures"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "20b92a03-ce72-473b-b469-08ff6135b7d4"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_deviceguard_requireplatformsecurityfeatures_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "07bbf118-c710-4ba2-bcf1-6720c5c5494b"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "217"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_devicelock_devicepasswordenabled"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0825c176-3150-45bd-b2bc-b444d9448922"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_devicelock_devicepasswordenabled_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "a6682e15-1214-4259-9bef-e5220327d24f"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_devicelock_mindevicepasswordlength"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "9b9bbc4c-e60c-4e93-a1af-b3c092bb7167"
#                 }
#                 simple_setting_value = {
#                   odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
#                   value      = 14
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "21981202-313e-4a7d-8821-89998d2a4795"
#                   }
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_devicelock_devicepasswordhistory"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "954b2312-eab2-4929-af4d-bf49c22c8dc2"
#                 }
#                 simple_setting_value = {
#                   odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
#                   value      = 24
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "d0eb7aa7-f6d6-4303-ad9c-7bc4e0677cfd"
#                   }
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "218"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_dmaguard_deviceenumerationpolicy"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "d108f29d-2187-42c8-b06d-1558185cd88b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_dmaguard_deviceenumerationpolicy_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f5ab26d8-4eef-4f4b-9c5a-cd5f37ec9b6a"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "219"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "user_vendor_msft_policy_config_experience_allowwindowsspotlight"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "e413c297-48d9-4906-af61-bc0063112e4a"
#           }
#           choice_setting_value = {
#             value = "user_vendor_msft_policy_config_experience_allowwindowsspotlight_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "424422ed-1a5f-44c6-af94-6a10b6d6b11e"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_experience_allowwindowsconsumerfeatures"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "0f210d89-9e13-4a44-84bd-efe59e4ed350"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_experience_allowwindowsconsumerfeatures_1"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "544dd809-88e3-4ebc-b4ef-f87b655e5fe0"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "user_vendor_msft_policy_config_experience_allowthirdpartysuggestionsinwindowsspotlight"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "043a43be-7160-491a-8b65-04eda1c7cd78"
#                 }
#                 choice_setting_value = {
#                   value = "user_vendor_msft_policy_config_experience_allowthirdpartysuggestionsinwindowsspotlight_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "d2bd940f-7b2b-47b3-a041-d29a913b9d53"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "220"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "vendor_msft_firewall_mdmstore_domainprofile_enablefirewall"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "f0d70bbf-6a6e-4832-822a-fd6bc34903b2"
#           }
#           choice_setting_value = {
#             value = "vendor_msft_firewall_mdmstore_domainprofile_enablefirewall_true"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c4745e21-9fe4-44db-8b72-c4c1f413b6cd"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_domainprofile_enablelogsuccessconnections"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "52b34275-d760-4160-a030-f197c1606ce4"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_domainprofile_enablelogsuccessconnections_true"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "ee1544db-094d-48e0-a04e-aafe98112c22"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_domainprofile_defaultoutboundaction"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "34bedb52-9ca9-4fef-924c-1258fd657756"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_domainprofile_defaultoutboundaction_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "1e480fbb-fd64-4b76-ad0b-209fe5560ca1"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_domainprofile_disableinboundnotifications"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "ebcfc80f-5a5c-4005-9720-38a77280bed5"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_domainprofile_disableinboundnotifications_true"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "b55023fd-e7bc-4cad-92e7-b1b9a06f6fd5"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_domainprofile_enablelogdroppedpackets"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "eb5baf13-91bd-4842-8e8c-5680c20a3063"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_domainprofile_enablelogdroppedpackets_true"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "448fe5b7-9ffe-43ea-84aa-a973b66bda99"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_domainprofile_logmaxfilesize"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "6a069b67-5b59-4bf6-97b4-94169b9357f2"
#                 }
#                 simple_setting_value = {
#                   odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
#                   value      = 16384
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "00911f06-c776-40e3-b09e-113e6e7ffd68"
#                   }
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_domainprofile_defaultinboundaction"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "55f13759-6a78-44b5-b92c-c35c3edf8eb4"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_domainprofile_defaultinboundaction_1"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "f2c34805-69f8-4662-9160-07d8e7b2fe5c"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "221"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "vendor_msft_firewall_mdmstore_privateprofile_enablefirewall"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "79884bf9-a065-4515-9687-6afb9945ac54"
#           }
#           choice_setting_value = {
#             value = "vendor_msft_firewall_mdmstore_privateprofile_enablefirewall_true"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "200ec79b-fdb9-4eaa-bdeb-a988c0b20c4a"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_privateprofile_logmaxfilesize"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "bffed6c8-f64e-48fb-b81e-62b5595cdb15"
#                 }
#                 simple_setting_value = {
#                   odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
#                   value      = 16384
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "aad037a5-9b1e-409a-a0fd-4cae2c204f5d"
#                   }
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_privateprofile_defaultinboundaction"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "53f203d9-7e72-4402-b238-2eec1166443a"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_privateprofile_defaultinboundaction_1"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "337773f8-ded9-4a4a-abef-03859dfe25fb"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_privateprofile_enablelogsuccessconnections"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "d4e3d1e0-ddfa-40fc-9fd8-a4bf739d69e2"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_privateprofile_enablelogsuccessconnections_true"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "2475c940-377e-4955-8549-46aa3ac7e508"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_privateprofile_enablelogdroppedpackets"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "1c90fdc0-9ffe-4bea-968a-d8bbe017e8ad"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_privateprofile_enablelogdroppedpackets_true"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "68efffb8-eab1-443e-8839-560f99596673"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_privateprofile_disableinboundnotifications"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "1da9e03e-49d1-4e2f-8c4a-53ce5032f874"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_privateprofile_disableinboundnotifications_true"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "dc2ea7b7-6860-4ea5-a969-3985cd15411d"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_privateprofile_defaultoutboundaction"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "aa7c29b5-1cc6-41be-afd5-947fc151b133"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_privateprofile_defaultoutboundaction_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "8553e88c-f77e-4fdc-bf1f-231adee2c3db"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "222"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "vendor_msft_firewall_mdmstore_publicprofile_enablefirewall"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ba1f210a-e5d1-47ba-b9f5-221685721a35"
#           }
#           choice_setting_value = {
#             value = "vendor_msft_firewall_mdmstore_publicprofile_enablefirewall_true"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "dbaf8e0a-2963-4df4-9eb4-8e9dfaef7419"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_publicprofile_logmaxfilesize"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "68ec1725-5d9b-408f-a12d-5d72ac81dc8c"
#                 }
#                 simple_setting_value = {
#                   odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
#                   value      = 16384
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "426195ab-b4ef-42e2-9e60-dfbd7c452550"
#                   }
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_publicprofile_defaultoutboundaction"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "86f09d09-0242-47ad-865e-3e93e61b0e25"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_publicprofile_defaultoutboundaction_0"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "69ce6a32-139a-4ac7-85bf-4aff19f4e99b"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_publicprofile_disableinboundnotifications"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "5d09938c-6b58-4f68-ab3b-80ffd1338dc0"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_publicprofile_disableinboundnotifications_true"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "09b6dda7-ee47-4318-aa9a-26f04b792144"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_publicprofile_defaultinboundaction"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "f6c2e0a0-61c6-4918-9a66-972f6c017551"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_publicprofile_defaultinboundaction_1"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "b4f89958-1553-405d-8c21-46ac4196dbbc"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_publicprofile_allowlocalpolicymerge"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "9c0bcc66-ae37-4b16-8d21-cd849a128097"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_publicprofile_allowlocalpolicymerge_false"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "502c81b5-d3ce-493e-80a2-01db2b6d0aa7"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_publicprofile_enablelogsuccessconnections"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "a1db5255-6f13-4ac2-9b89-bfb9fbfa52b2"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_publicprofile_enablelogsuccessconnections_true"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "47ee3896-0ada-4c77-beaa-011d28c89aea"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_publicprofile_allowlocalipsecpolicymerge"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "171ef806-b08b-4a47-b25b-dcce319a680a"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_publicprofile_allowlocalipsecpolicymerge_false"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "107c10b7-d6ed-44bb-9350-38611ae5e1a0"
#                   }
#                   children = []
#                 }
#               },
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "vendor_msft_firewall_mdmstore_publicprofile_enablelogdroppedpackets"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "c87ed926-4455-4bec-8ef8-6f57b3be27a4"
#                 }
#                 choice_setting_value = {
#                   value = "vendor_msft_firewall_mdmstore_publicprofile_enablelogdroppedpackets_true"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "f6dadd6d-4528-4fbb-be30-820720f940e5"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "223"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_lanmanworkstation_enableinsecureguestlogons"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9fab9ea3-146c-4964-8751-dca7e5c97f20"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_lanmanworkstation_enableinsecureguestlogons_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c20bd9f5-ef91-48d2-9f1e-d0e2a92908c4"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "224"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_limitlocalaccountuseofblankpasswordstoconsolelogononly"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c9c87138-f802-4646-bfa5-aec517edec82"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_accounts_limitlocalaccountuseofblankpasswordstoconsolelogononly_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5bce937a-6278-48f9-8f3e-ed5738931978"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "225"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_interactivelogon_machineinactivitylimit_v2"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "611e4505-252d-404b-8db0-c1733f4e3d9b"
#           }
#           simple_setting_value = {
#             odata_type = "#microsoft.graph.deviceManagementConfigurationIntegerSettingValue"
#             value      = 900
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "b7557e4e-68c5-4883-ba42-06abb9234e83"
#             }
#           }
#         }
#       },
#       {
#         id = "226"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_interactivelogon_smartcardremovalbehavior"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "de3047f3-e412-42ba-8da7-81d8c3ad7f3a"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_interactivelogon_smartcardremovalbehavior_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4def35ad-1378-43b7-8598-e12a4af8fba0"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "227"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_digitallysigncommunicationsalways"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "56ac3d3b-9cd6-4cc4-9f85-0dfe81822b4a"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_digitallysigncommunicationsalways_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d413d6cd-aff2-4cfe-be8b-1eda2c41ce46"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "228"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_sendunencryptedpasswordtothirdpartysmbservers"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "5ad6a832-4d99-4e4e-9d9f-95a093eb84b9"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkclient_sendunencryptedpasswordtothirdpartysmbservers_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "ec725671-6c2c-45dd-ae6e-402b9fccedd3"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "229"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkserver_digitallysigncommunicationsalways"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "e965121f-6bf0-429d-9fe2-a11f92f610e3"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_microsoftnetworkserver_digitallysigncommunicationsalways_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "b7341853-96e9-4135-8627-a3476802e06d"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "230"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccounts"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ff7c42f5-1b27-481f-b3cd-643119474836"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccounts_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "213a7c3a-f697-4670-8ac4-a30c65814610"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "231"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccountsandshares"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9562eb5c-9f57-4ba8-9948-55cb515ea582"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_donotallowanonymousenumerationofsamaccountsandshares_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "57979804-e230-4603-a3d7-d391abad5c57"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "232"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_restrictanonymousaccesstonamedpipesandshares"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "41a039cc-658e-4134-8eb5-0ddaed07f780"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_restrictanonymousaccesstonamedpipesandshares_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5752ca90-a31c-4be5-adb1-372ded888d41"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "233"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networkaccess_restrictclientsallowedtomakeremotecallstosam"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "87019ae6-9fa6-488f-ab0a-8d98ee68ae78"
#           }
#           simple_setting_value = {
#             odata_type = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#             value      = "O:BAG:BAD:(A;;RC;;;BA)"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "e61e4ecf-6c87-438b-84ba-9f5650a44a30"
#             }
#           }
#         }
#       },
#       {
#         id = "234"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_donotstorelanmanagerhashvalueonnextpasswordchange"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "2e5a830d-26c1-4329-9e38-b50dd71a1185"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_donotstorelanmanagerhashvalueonnextpasswordchange_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "663a9a8e-0dc7-4819-857a-f8717937d607"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "235"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_lanmanagerauthenticationlevel"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "b3d99eda-5367-4850-b14e-ccac8934e0f1"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_lanmanagerauthenticationlevel_5"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4f4595cb-4519-46b3-bb4d-8377e523325d"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "236"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedclients"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "6aff9fdc-3d0f-49fa-b332-68058b0276f4"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedclients_537395200"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "920a8dae-937c-44db-8d42-363835a9fabd"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "237"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedservers"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9931e08b-f363-4f47-af2a-20e2776fdb7d"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_networksecurity_minimumsessionsecurityforntlmsspbasedservers_537395200"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "6d54c356-e30f-4424-8f24-f4e0e6e448cb"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "238"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforadministrators"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "17a69d6d-43ff-4608-9044-1c936654b841"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforadministrators_2"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "9413cd9a-52a2-495d-9f76-a2cf76aa316b"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "239"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforstandardusers"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "243b6001-7cc2-4f2d-934b-ff6c64f880dd"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_behavioroftheelevationpromptforstandardusers_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "f7578c9d-d7a7-4605-bbcf-8fe799100cf5"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "240"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_detectapplicationinstallationsandpromptforelevation"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "6b3ef788-370d-4ea8-b3c4-f2db192fc167"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_detectapplicationinstallationsandpromptforelevation_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "dcbbd1e7-8217-4246-b4a2-788d034e217e"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "241"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "8b6e385c-165a-4596-bcc8-afcd763183a2"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "13e770d8-0696-461f-a18c-2a83b17d26ee"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "242"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_runalladministratorsinadminapprovalmode"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "ed9ad07e-2c3c-4c2e-b8c3-4c1235356b73"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_runalladministratorsinadminapprovalmode_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "2849bf31-e42f-44fb-a201-6aed205b0c98"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "243"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_useadminapprovalmode"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9d0fea17-5d03-4922-b2e3-b4c9587720bb"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_useadminapprovalmode_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "58e2f919-f21d-4125-ba19-372f199a9a69"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "244"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_virtualizefileandregistrywritefailurestoperuserlocations"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "05db3521-d464-4634-9d9f-d41d4750be2b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localpoliciessecurityoptions_useraccountcontrol_virtualizefileandregistrywritefailurestoperuserlocations_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5eff6fb9-f4e4-4cf9-9b39-9af7ba31cc1c"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "245"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_localsecurityauthority_configurelsaprotectedprocess"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0e2399af-53ce-43cc-9bdf-89dedd2d36d8"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_localsecurityauthority_configurelsaprotectedprocess_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "33f50379-43d4-4242-8f53-4020fa14648b"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "246"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_applicationmanagement_allowgamedvr"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "6fd9b16d-d62b-4152-84a3-1c17cd4d3221"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_applicationmanagement_allowgamedvr_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "4167ee45-5fc3-4a92-b5a7-ba5f3fca6d7b"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "247"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_applicationmanagement_msiallowusercontroloverinstall"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "e40efe0e-6bca-48e3-8a8c-c814005139bf"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_applicationmanagement_msiallowusercontroloverinstall_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "14cc40e9-0f88-4851-893e-59f0707a3dd9"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "248"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_applicationmanagement_msialwaysinstallwithelevatedprivileges"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c7a3cecb-db69-41c2-8573-c9154c3594c3"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_applicationmanagement_msialwaysinstallwithelevatedprivileges_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "c28c5889-dd9f-42e3-803d-e603bac30321"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "249"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpluginssetting"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "39ca112c-fc9c-4137-b5dd-2c225d866ac3"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpluginssetting_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "5b73269d-02d3-4f66-ac23-b37654127f92"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "250"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpluginssetting"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "3ac1e577-e8ca-4c68-800e-cc92deb47109"
#           }
#           choice_setting_value = {
#             value = "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~contentsettings_defaultpluginssetting_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "b229d2e4-1915-4040-9f0c-265f100e48ed"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "251"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_smartscreenenabled"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0223562f-a5b3-4aef-9d86-c2b79bde445f"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_smartscreenenabled_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "ef65d4de-0b6f-4b24-9342-b16e8d70950c"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "252"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverride"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "706b45d6-ff5a-4462-9810-80b71200f4af"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge~smartscreen_preventsmartscreenpromptoverride_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "956fbfd0-2cf5-447c-ae84-cbee34dfc4b4"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "253"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "d851ee14-4474-4dc0-8849-bf661a3f9f3c"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "aae36bf9-f860-45fa-9b3d-fb692d613dac"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_sslversionmin"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "79ec329e-8f0e-43c1-b93b-85669d92d1d3"
#                 }
#                 choice_setting_value = {
#                   value = "device_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_sslversionmin_tls1.2"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "eb667b77-7073-4739-8539-676bc0dd13e9"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "254"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "d319e826-e7bb-4960-ac79-4b534dd2fc60"
#           }
#           choice_setting_value = {
#             value = "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "152e0ad7-5ddf-410f-8bfe-9981109291fa"
#             }
#             children = [
#               {
#                 odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#                 setting_definition_id = "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_sslversionmin"
#                 setting_instance_template_reference = {
#                   setting_instance_template_id = "7ec6b1b9-43ce-46d5-87d6-b26839421bdd"
#                 }
#                 choice_setting_value = {
#                   value = "user_vendor_msft_policy_config_microsoft_edge~policy~microsoft_edge_sslversionmin_sslversionmin_tls1.2"
#                   setting_value_template_reference = {
#                     use_template_default      = false
#                     setting_value_template_id = "d28884a3-1a76-4636-a234-eabd2c216ec9"
#                   }
#                   children = []
#                 }
#               }
#             ]
#           }
#         }
#       },
#       {
#         id = "255"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_privacy_letappsactivatewithvoiceabovelock"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "6570afff-de79-4003-8e72-35ec97844aec"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_privacy_letappsactivatewithvoiceabovelock_2"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "23d6f7d8-e6a8-4844-98d8-47154b2de2b1"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "256"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_search_allowindexingencryptedstoresoritems"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "69bf73c7-6f11-4870-98cc-2e8a56b6d4bf"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_search_allowindexingencryptedstoresoritems_0"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "e5cf1cc9-63b6-4140-b556-e6c6613dc72f"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "257"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_webthreatdefense_notifymalicious"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "36db3ab9-6ee1-4bbd-9bc8-674d2f6e84d4"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_webthreatdefense_notifymalicious_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "9a58754a-f976-45fc-b571-89f1d56bf19f"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "258"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_webthreatdefense_notifypasswordreuse"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "fcec3448-7796-4045-838b-4f847a717dee"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_webthreatdefense_notifypasswordreuse_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "66db896a-cb11-4324-a411-fd6ab22dce71"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "259"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_webthreatdefense_notifyunsafeapp"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "61ae95c7-17ab-4c16-9352-a51ec3c023b8"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_webthreatdefense_notifyunsafeapp_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "7a10ac14-99d6-4188-8059-9b9db8e2b9b6"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "260"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_webthreatdefense_serviceenabled"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0883a19d-41a8-44d2-b2ef-76833ccbf40e"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_webthreatdefense_serviceenabled_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "ade6cf22-2187-4318-8a72-a9aa98ecab9d"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "261"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_smartscreen_enablesmartscreeninshell"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "972b8064-a094-4c72-b265-6997fcdc1b52"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_smartscreen_enablesmartscreeninshell_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "62e3cedd-6830-4ef4-841e-5229b18ed5a8"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "262"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_smartscreen_preventoverrideforfilesinshell"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "87820c20-6abb-4bd4-848f-d15c72d9520b"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_smartscreen_preventoverrideforfilesinshell_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "cc41a8c7-37ae-47d9-b028-eddc516e565b"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "263"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_accessfromnetwork"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "61c8e66e-9a7e-45a5-9042-0a80fb408885"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             },
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-555"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "264"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_allowlocallogon"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "7fb5a68d-7bcc-47e6-8f1e-c27e333c0ca5"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             },
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-545"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "265"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_backupfilesanddirectories"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "7ee40c2c-b63e-49df-9dc4-72ac0d3372a7"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "266"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_createglobalobjects"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "fce5b980-fcb2-45d4-92f2-8305866a1a82"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             },
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-19"
#               setting_value_template_reference = null
#             },
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-20"
#               setting_value_template_reference = null
#             },
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-6"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "267"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_createpagefile"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "37b58477-a9a4-41f6-902d-10802cbabd75"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "268"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_debugprograms"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "7966b135-6e44-4f2f-95d8-4ad0fc765094"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "269"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_denyaccessfromnetwork"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "4cff8966-fbf1-43a3-844a-bc6cd2abec55"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-113"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "270"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_denyremotedesktopserviceslogon"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "65daf6e6-ae7c-4d8e-b54c-782ae7e45536"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-113"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "271"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_impersonateclient"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "9640f944-5dfa-4189-994d-193dd2fb4e8c"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             },
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-6"
#               setting_value_template_reference = null
#             },
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-19"
#               setting_value_template_reference = null
#             },
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-20"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "272"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_loadunloaddevicedrivers"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "82e3f8e7-61ae-47de-9f1a-5e4156db9a88"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "273"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_manageauditingandsecuritylog"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "053df5bb-4b36-4301-a3fc-a91852fa609e"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "274"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_managevolume"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "0ddb6d69-4798-4a7f-80e7-8225d47fc311"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "275"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_modifyfirmwareenvironment"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "378d0e25-4218-460a-b61d-cf718f6a4dfc"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "276"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_profilesingleprocess"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "a1bd89ec-7bca-4b88-81cd-1e5cf4d88aa3"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "277"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_remoteshutdown"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "638c77cc-d094-4e77-b267-a4b14339304d"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "278"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_restorefilesanddirectories"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "3d621876-79f8-4976-bf8c-21c638da2c3e"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "279"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_userrights_takeownership"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "bea9e3e4-316b-43b2-ab23-b98c0b929afe"
#           }
#           simple_setting_collection_value = [
#             {
#               odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
#               value                            = "*S-1-5-32-544"
#               setting_value_template_reference = null
#             }
#           ]
#         }
#       },
#       {
#         id = "280"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_virtualizationbasedtechnology_hypervisorenforcedcodeintegrity"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "bdce8f32-9b0d-4a7e-b08b-10e4d85297b1"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_virtualizationbasedtechnology_hypervisorenforcedcodeintegrity_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "d6759bc2-ec35-4fbe-bb8e-b409f02e9ca0"
#             }
#             children = []
#           }
#         }
#       },
#       {
#         id = "281"
#         setting_instance = {
#           odata_type            = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
#           setting_definition_id = "device_vendor_msft_policy_config_windowsinkworkspace_allowwindowsinkworkspace"
#           setting_instance_template_reference = {
#             setting_instance_template_id = "c2c6cbbd-2532-4556-867c-917b072353a8"
#           }
#           choice_setting_value = {
#             value = "device_vendor_msft_policy_config_windowsinkworkspace_allowwindowsinkworkspace_1"
#             setting_value_template_reference = {
#               use_template_default      = false
#               setting_value_template_id = "9f82ecbc-cefc-4603-b050-9a1e863ba6b0"
#             }
#             children = []
#           }
#         }
#       }
#     ]
#   }

#   assignments = {
#     all_devices = false
#     # all_devices_filter_type = "exclude"
#     # all_devices_filter_id   = ""

#     all_users = false
#     # all_users_filter_type = "include"
#     # all_users_filter_id   = ""

#     include_groups = [
#       {
#         group_id                   = local.cloud_pc_devices_group_id
#         include_groups_filter_type = "none"
#       },
#     ]

#     exclude_group_ids = []
#   }

#   timeouts = {
#     create = "5m"
#     read   = "5m"
#     update = "5m"
#     delete = "1m"
#   }
# }
