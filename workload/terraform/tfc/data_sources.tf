# Data sources for existing resources

# Data source for the organization
data "tfe_organization" "main" {
  name = var.organization_name
}