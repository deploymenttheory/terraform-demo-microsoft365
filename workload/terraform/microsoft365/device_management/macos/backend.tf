# Terraform Cloud backend configuration for macOS device management workspace
terraform {
  required_providers {
    microsoft365 = {
      source  = "deploymenttheory/microsoft365"
      version = "0.30.2-alpha"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.4.0"
    }
  }

  cloud {
    organization = "deploymenttheory"

    workspaces {
      name = "m365_device_management_macos_sandbox"
    }
  }
}