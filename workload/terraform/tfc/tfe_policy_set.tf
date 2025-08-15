# TFE Policy Set resources (optional - uncomment to enable)

# Example: Security policy set for production workspaces
# resource "tfe_policy_set" "security" {
#   name          = "microsoft365-security-policies"
#   description   = "Security policies for Microsoft 365 workspaces"
#   organization  = data.tfe_organization.main.name
#   policies_path = "policies/"
#   
#   # Apply to production workspaces only
#   workspace_ids = [
#     for k, v in tfe_workspace.domain_workspaces : v.id
#     if endswith(v.name, "_production")
#   ]
# }

# Example: Compliance policy set for all workspaces
# resource "tfe_policy_set" "compliance" {
#   name         = "microsoft365-compliance-policies"
#   description  = "Compliance policies for all Microsoft 365 workspaces"
#   organization = data.tfe_organization.main.name
#   global       = false
#   
#   # Apply to entire project
#   project_ids = [tfe_project.microsoft365.id]
# }