# resource "microsoft365_graph_beta_windows_365_cloud_pc_provisioning_policy" "win_365_with_hybrid_ad_join" {
#   display_name             = "tf-demo-w365-provisioning-policy"
#   description              = ""
#   cloud_pc_naming_template = "CPC-%USERNAME:5%-%RAND:5%"
#   image_id                 = "microsoftwindowsdesktop_windows-ent-cpc_win11-24H2-ent-cpc-m365"
#   image_type               = "gallery"
#   enable_single_sign_on    = false
#   provisioning_type        = "dedicated"
#   managed_by               = "windows365"

#   domain_join_configurations = [
#     {
#       domain_join_type = "azureADJoin"
#       region_name      = "automatic"
#       region_group     = "asia"
#     }
#   ]

#   windows_setting = {
#     locale = "en-US"
#   }

#   microsoft_managed_desktop = {
#     managed_type = "notManaged"
#   }

#   # autopatch = {
#   #   autopatch_group_id = "4aa9b805-9494-4eed-a04b-ed51ec9e631e"
#   # }

#   apply_to_existing_cloud_pcs = {
#     microsoft_entra_single_sign_on_for_all_devices        = true
#     region_or_azure_network_connection_for_all_devices    = true
#     region_or_azure_network_connection_for_select_devices = true
#   }

#   scope_ids = ["9", "8"]

#   assignments = [
#     {
#       group_id = local.cloud_pc_group_id
#       # Only group_id for dedicated
#     }
#   ]
# }

# output "cloud_pc_group_id" {
#   value = local.cloud_pc_group_id
# }