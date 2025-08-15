# TFE Registry Provider resources

# Add Microsoft 365 provider to the private registry
resource "tfe_registry_provider" "microsoft365" {
  organization  = data.tfe_organization.main.name
  registry_name = "public"
  namespace     = "deploymenttheory"
  name          = "microsoft365"
}

# Add other commonly used providers from public registry
resource "tfe_registry_provider" "azuread" {
  count = var.enable_additional_providers ? 1 : 0

  organization  = data.tfe_organization.main.name
  registry_name = "public"
  namespace     = "hashicorp"
  name          = "azuread"
}

resource "tfe_registry_provider" "azurerm" {
  count = var.enable_additional_providers ? 1 : 0

  organization  = data.tfe_organization.main.name
  registry_name = "public"
  namespace     = "hashicorp"
  name          = "azurerm"
}

resource "tfe_registry_provider" "random" {
  count = var.enable_additional_providers ? 1 : 0

  organization  = data.tfe_organization.main.name
  registry_name = "public"
  namespace     = "hashicorp"
  name          = "random"
}

resource "tfe_registry_provider" "time" {
  count = var.enable_additional_providers ? 1 : 0

  organization  = data.tfe_organization.main.name
  registry_name = "public"
  namespace     = "hashicorp"
  name          = "time"
}