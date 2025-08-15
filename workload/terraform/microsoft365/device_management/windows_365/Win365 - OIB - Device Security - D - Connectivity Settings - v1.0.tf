resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "win365_oib_device_security_d_connectivity_settings_v1_0" {
  name               = "Win365 - OIB - Device Security - D - Connectivity Settings - v1.0"
  description        = ""
  platforms          = "windows10"
  technologies       = ["mdm"]
  role_scope_tag_ids = ["0"]

  template_reference = {
    template_id = ""
  }

  configuration_policy = {
    settings = [
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_select_transport"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = [
              {
                odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_select_transport_ts_select_transport_type"
                setting_instance_template_reference = null
                choice_setting_value = {
                  setting_value_template_reference = null
                  children                         = []
                  value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_select_transport_ts_select_transport_type_0"
                }
              }
            ]
            value = "device_vendor_msft_policy_config_admx_terminalserver_ts_select_transport_1"
          }
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_promptforpassworduponconnection"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_remotedesktopservices_promptforpassworduponconnection_1"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_disconnectonlockmicrosoftidentityauthn"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_remotedesktopservices_disconnectonlockmicrosoftidentityauthn_1"
          }
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_requiresecurerpccommunication"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_remotedesktopservices_requiresecurerpccommunication_1"
          }
        }
        id = "3"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = [
              {
                odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_ts_encryption_level"
                setting_instance_template_reference = null
                choice_setting_value = {
                  setting_value_template_reference = null
                  children                         = []
                  value                            = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_ts_encryption_level_3"
                }
              }
            ]
            value = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_1"
          }
        }
        id = "4"
      }
    ]
  }

  # Assignments are defined as a set
  assignments = [
    # Optional: Assignment targeting all devices with include filter
    {
      type        = "allDevicesAssignmentTarget"
      filter_id   = "2d7956fb-e5b5-4fa3-90b2-5bee9bee7883"
      filter_type = "include"
    },
    # Optional: Assignment targeting all licensed users with exclude filter
    {
      type        = "allLicensedUsersAssignmentTarget"
      filter_id   = "2d7956fb-e5b5-4fa3-90b2-5bee9bee7883"
      filter_type = "exclude"
    },
    # Optional: Assignment targeting a specific group with include filter
    {
      type        = "groupAssignmentTarget"
      group_id    = "f46f43de-ba95-4fcd-8417-7f0e64b317c2"
      filter_id   = "2d7956fb-e5b5-4fa3-90b2-5bee9bee7883"
      filter_type = "include"
    },
    # Optional: Assignment targeting a specific group with exclude filter
    {
      type        = "groupAssignmentTarget"
      group_id    = "4f03648f-2a22-4aa2-8131-fb22eea9db3c"
      filter_id   = "80f8c0a5-f3ec-4936-bcbc-420dc0ca3665"
      filter_type = "include"
    },
    # Optional: Assignment targeting a specific group with exclude filter
    {
      type        = "groupAssignmentTarget"
      group_id    = "3ccdd168-fff4-4714-8960-4cd7e0d8d264"
      filter_id   = "80f8c0a5-f3ec-4936-bcbc-420dc0ca3665"
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
}
