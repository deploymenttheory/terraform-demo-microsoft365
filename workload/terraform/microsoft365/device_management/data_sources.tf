# Remote state data sources for accessing shared resources across workspaces
# This file should be copied to each platform-specific workspace directory

# Data source for shared device management resources (assignment filters and branding)
data "terraform_remote_state" "shared" {
  backend = "remote"
  
  config = {
    organization = "deploymenttheory"
    workspaces = {
      name = "m365_device_management_shared_${var.environment}"
    }
  }
}

# Data source for groups workspace (Azure AD groups and deployment rings)
data "terraform_remote_state" "groups" {
  backend = "remote"
  
  config = {
    organization = "deploymenttheory"
    workspaces = {
      name = "m365_groups_${var.environment}"
    }
  }
}

# Local values for easy access to remote state outputs
locals {
  # Assignment filters from shared workspace
  assignment_filters = data.terraform_remote_state.shared.outputs.assignment_filters
  
  # Commonly used assignment filter IDs
  macos_less_than_15_0_filter_id = data.terraform_remote_state.shared.outputs.assignment_filters.macos_less_than_15_0
  macos_apple_silicon_filter_id = data.terraform_remote_state.shared.outputs.assignment_filters.macos_apple_silicon
  windows_arm64_filter_id = data.terraform_remote_state.shared.outputs.assignment_filters.windows_arm64_devices
  
  # Groups from groups workspace
  # Example: macos_groups = data.terraform_remote_state.groups.outputs.macos_groups
  
  # Intune branding profile from shared workspace
  intune_branding_profile_id = data.terraform_remote_state.shared.outputs.intune_branding_profile_id
}