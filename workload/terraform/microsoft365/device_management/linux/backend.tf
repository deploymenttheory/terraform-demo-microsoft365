# Terraform Cloud backend configuration for Linux device management workspace
terraform {
  required_providers {
    microsoft365 = {
      source  = "deploymenttheory/microsoft365"
      version = "0.30.0-alpha"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.4.0"
    }
  }

  cloud {
    organization = "deploymenttheory"

    workspaces {
      # This workspace will be dynamically selected based on environment
      tags = ["microsoft365", "device-management", "linux"]
    }
  }
}