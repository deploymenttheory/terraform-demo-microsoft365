# resource "microsoft365_graph_beta_windows_365_user_setting" "windows_365_user_settings" {
#   display_name         = "Example Cloud PC User Setting"
#   local_admin_enabled  = true
#   reset_enabled        = true
#   self_service_enabled = false

#   restore_point_setting = {
#     frequency_in_hours   = 12
#     frequency_type       = "default"
#     user_restore_enabled = true
#   }

#   cross_region_disaster_recovery_setting = {
#     maintain_cross_region_restore_point_enabled = true
#     user_initiated_disaster_recovery_allowed    = true
#     disaster_recovery_type                      = "premium"
#     disaster_recovery_network_setting = {
#       network_type = "microsoftHosted"
#     }
#   }

#   notification_setting = {
#     restart_prompts_disabled = false
#   }

#   assignments = [
#     {
#       group_id = local.cloud_pc_group_id
#     }
#   ]
# } 