resource "microsoft365_graph_beta_device_management_settings_catalog_template" "linux_endpoint_detection_and_response" {
  name                           = "Linux - Endpoint Detection and Response"
  description                    = "terraform test for settings catalog templates"
  settings_catalog_template_type = "linux_endpoint_detection_and_response"
  role_scope_tag_ids             = ["8"]

  settings = jsonencode({
    "settings" : [
      {
        "settingInstance" : {
          "settingDefinitionId" : "linux_mdatp_managed_edr_tags",
          "settingInstanceTemplateReference" : {
            "settingInstanceTemplateId" : "d0eb0a92-3807-4d9d-8432-6edd1aa108ce"
          },
          "@odata.type" : "#microsoft.graph.deviceManagementConfigurationGroupSettingCollectionInstance",
          "groupSettingCollectionValue" : [
            {
              "settingValueTemplateReference" : null,
              "children" : [
                {
                  "settingDefinitionId" : "linux_mdatp_managed_edr_tags_item_value",
                  "simpleSettingValue" : {
                    "value" : "tag-value",
                    "settingValueTemplateReference" : null,
                    "@odata.type" : "#microsoft.graph.deviceManagementConfigurationStringSettingValue"
                  },
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationSimpleSettingInstance"
                },
                {
                  "settingDefinitionId" : "linux_mdatp_managed_edr_tags_item_key",
                  "choiceSettingValue" : {
                    "value" : "linux_mdatp_managed_edr_tags_item_key_0",
                    "settingValueTemplateReference" : null,
                    "children" : []
                  },
                  "settingInstanceTemplateReference" : null,
                  "@odata.type" : "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                }
              ]
            }
          ]
        },
        "id" : "0"
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