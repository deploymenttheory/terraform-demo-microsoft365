# TFE Variable Set resources

resource "tfe_variable_set" "common" {
  name         = "Microsoft365-Common"
  description  = "Common variables for Microsoft 365 workspaces"
  organization = data.tfe_organization.main.name
  global       = false # Apply to specific workspaces/projects only
}