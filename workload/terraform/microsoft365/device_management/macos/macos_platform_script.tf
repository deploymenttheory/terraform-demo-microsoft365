resource "microsoft365_graph_beta_device_management_macos_platform_script" "disable_http_server" {
  # Required fields
  display_name = "Disable HTTP Server"
  description  = "Disable HTTP Server 2"

  script_content = file("${path.module}/macos_scripts/macos_platform_scripts/DisableHTTPServer.zsh")

  run_as_account = "system" # Possible values: "system" or "user"
  file_name      = "DisableHTTPServer.zsh"

  # Optional fields
  block_execution_notifications = false
  execution_frequency           = "PT1H" # ISO 8601 duration format (e.g., P1D for 1 day, PT1H for 1 hour)
  retry_count                   = 3

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

  # Role scope tag IDs (optional)
  role_scope_tag_ids = ["0"]

  # Timeouts configuration (optional)
  timeouts = {
    create = "30m"
    read   = "10m"
    update = "30m"
    delete = "30m"
  }
}