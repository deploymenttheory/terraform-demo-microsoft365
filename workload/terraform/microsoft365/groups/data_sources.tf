# Current Azure AD client configuration for groups workspace
data "azuread_client_config" "current" {}

# Groups workspace is independent and doesn't need remote state from other workspaces
# All group resources are defined locally in this workspace