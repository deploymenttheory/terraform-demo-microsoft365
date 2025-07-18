resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "macos_oib_microsoft_edge_u_extensions_v1_0" {
  name               = "MacOS - OIB - Microsoft Edge - U - Extensions - v1.0"
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
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_extensioninstallallowlist"
          setting_instance_template_reference = null
          simple_setting_collection_value = [
            {
              odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
              setting_value_template_reference = null
              value                            = "odfafepnkmbhccpbejgmiehpchacaeak"
            }
          ]
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_blockexternalextensions"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "com.apple.managedclient.preferences_blockexternalextensions_true"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_extensioninstallforcelist"
          setting_instance_template_reference = null
          simple_setting_collection_value = [
            {
              odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
              setting_value_template_reference = null
              value                            = "nkbndigcebkoaejohleckhekfmcecfja"
            },
            {
              odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
              setting_value_template_reference = null
              value                            = "ofefcgjbeghpigppfmkologfjadafddi"
            }
          ]
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionInstance"
          setting_definition_id               = "com.apple.managedclient.preferences_extensioninstallblocklist"
          setting_instance_template_reference = null
          simple_setting_collection_value = [
            {
              odata_type                       = "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
              setting_value_template_reference = null
              value                            = "*"
            }
          ]
        }
        id = "3"
      }
    ]
  }
}
