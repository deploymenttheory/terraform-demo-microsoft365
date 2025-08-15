# Terraform Cloud backend configuration for Microsoft 365 groups workspace
terraform {
  required_providers {
    microsoft365 = {
      source  = "deploymenttheory/microsoft365"
      version = "0.26.3-alpha"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.4.0"
    }
  }

  cloud {
    organization = "deploymenttheory"

    workspaces {
      name = "m365_groups_sandbox"
    }
  }
}