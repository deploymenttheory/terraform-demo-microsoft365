# TFE Project resource

resource "tfe_project" "microsoft365" {
  organization = data.tfe_organization.main.name
  name         = var.project_name
  description  = var.project_description
}