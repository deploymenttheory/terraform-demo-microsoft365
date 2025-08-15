# Initial data sources file for first deployment
# Use this version when shared and groups workspaces haven't been deployed yet
# Replace with data_sources.tf after dependencies are deployed

# Current Azure AD client configuration (if needed)
# data "azuread_client_config" "current" {}

# Commented out until shared workspace is deployed
# data "terraform_remote_state" "shared" {
#   backend = "remote"
#   
#   config = {
#     organization = "deploymenttheory"
#     workspaces = {
#       name = "m365_device_management_shared_${var.environment}"
#     }
#   }
# }

# Commented out until groups workspace is deployed  
# data "terraform_remote_state" "groups" {
#   backend = "remote"
#   
#   config = {
#     organization = "deploymenttheory"
#     workspaces = {
#       name = "m365_groups_${var.environment}"
#     }
#   }
# }

# Local values using hardcoded IDs for initial deployment
locals {
  # Use hardcoded filter IDs until shared workspace is deployed
  common_filter_1 = "2d7956fb-e5b5-4fa3-90b2-5bee9bee7883"
  common_filter_2 = "80f8c0a5-f3ec-4936-bcbc-420dc0ca3665"
  
  # Uncomment these after shared workspace is deployed:
  # assignment_filters = data.terraform_remote_state.shared.outputs.assignment_filters
  # macos_less_than_15_0_filter_id = data.terraform_remote_state.shared.outputs.assignment_filters.macos_less_than_15_0
  # macos_apple_silicon_filter_id = data.terraform_remote_state.shared.outputs.assignment_filters.macos_apple_silicon
  # windows_arm64_filter_id = data.terraform_remote_state.shared.outputs.assignment_filters.windows_arm64_devices
  # intune_branding_profile_id = data.terraform_remote_state.shared.outputs.intune_branding_profile_id
}