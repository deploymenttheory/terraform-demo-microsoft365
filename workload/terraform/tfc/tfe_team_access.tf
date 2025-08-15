# TFE Team Access resources (optional - uncomment to enable)

# Example: Admin team access to all workspaces
# data "tfe_team" "admins" {
#   name         = "admins"
#   organization = data.tfe_organization.main.name
# }
# 
# resource "tfe_team_access" "admins_all_workspaces" {
#   for_each = tfe_workspace.domain_workspaces
# 
#   access       = "admin"
#   team_id      = data.tfe_team.admins.id
#   workspace_id = each.value.id
# }

# Example: Read-only access for developers to staging workspaces
# data "tfe_team" "developers" {
#   name         = "developers"
#   organization = data.tfe_organization.main.name
# }
# 
# resource "tfe_team_access" "developers_staging" {
#   for_each = {
#     for k, v in tfe_workspace.domain_workspaces : k => v
#     if endswith(v.name, "_staging")
#   }
# 
#   access       = "read"
#   team_id      = data.tfe_team.developers.id
#   workspace_id = each.value.id
# }

# Example: Write access for platform teams to their respective workspaces
# data "tfe_team" "windows_team" {
#   name         = "windows-team"
#   organization = data.tfe_organization.main.name
# }
# 
# resource "tfe_team_access" "windows_team_access" {
#   for_each = {
#     for k, v in tfe_workspace.domain_workspaces : k => v
#     if contains(v.tag_names, "windows")
#   }
# 
#   access       = "write"
#   team_id      = data.tfe_team.windows_team.id
#   workspace_id = each.value.id
# }