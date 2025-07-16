# resource "microsoft365_graph_beta_device_management_macos_platform_script" "disable_http_server" {
#   # Required fields
#   display_name = "Disable HTTP Server"
#   description  = "Disable HTTP Server"

#   script_content = file("${path.module}/macos_scripts/macos_platform_scripts/DisableHTTPServer.zsh")

#   run_as_account = "system" # Possible values: "system" or "user"
#   file_name      = "DisableHTTPServer.zsh"

#   # Optional fields
#   block_execution_notifications = false
#   execution_frequency           = "PT1H" # ISO 8601 duration format (e.g., P1D for 1 day, PT1H for 1 hour)
#   retry_count                   = 3

#   # Role scope tag IDs (optional)
#   role_scope_tag_ids = ["0"]

#   # Timeouts configuration (optional)
#   timeouts = {
#     create = "30m"
#     read   = "10m"
#     update = "30m"
#     delete = "30m"
#   }
# }