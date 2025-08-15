# TFE Project Variable Set resources

# Apply common variable set to the project (affects all workspaces in project)
resource "tfe_project_variable_set" "common" {
  variable_set_id = tfe_variable_set.common.id
  project_id      = tfe_project.microsoft365.id
}