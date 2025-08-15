# Data sources for current Azure AD client configuration

data "azuread_client_config" "current" {}

# Optional: Data source for specific users to add as service principal owners
# Uncomment and modify as needed
# data "azuread_user" "service_principal_owners" {
#   for_each            = toset(var.service_principal_owner_upns)
#   user_principal_name = each.key
# }