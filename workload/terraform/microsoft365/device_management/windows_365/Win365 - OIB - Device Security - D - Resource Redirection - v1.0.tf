resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "win365_oib_device_security_d_resource_redirection_v1_0" {
  name               = "Win365 - OIB - Device Security - D - Resource Redirection - v1.0"
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
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_audio"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_audio_1"
          }
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_audio_capture"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_audio_capture_1"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_time_zone"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_time_zone_1"
          }
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_com"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_com_1"
          }
        }
        id = "3"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_donotallowdriveredirection"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_remotedesktopservices_donotallowdriveredirection_1"
          }
        }
        id = "4"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_lpt"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_lpt_1"
          }
        }
        id = "5"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_pnp"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_pnp_1"
          }
        }
        id = "6"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_limitservertoclientclipboardredirection"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = [
              {
                odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_limitservertoclientclipboardredirection_ts_sc_clipboard_restriction_text"
                setting_instance_template_reference = null
                choice_setting_value = {
                  setting_value_template_reference = null
                  children                         = []
                  value                            = "device_vendor_msft_policy_config_remotedesktopservices_limitservertoclientclipboardredirection_ts_sc_clipboard_restriction_text_0"
                }
              }
            ]
            value = "device_vendor_msft_policy_config_remotedesktopservices_limitservertoclientclipboardredirection_1"
          }
        }
        id = "7"
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
}
