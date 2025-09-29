# Terraform Cloud backend configuration for iOS/iPadOS device management workspace
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
      # This workspace will be dynamically selected based on environment
      tags = ["microsoft365", "device-management", "ios"]
    }
  }
}