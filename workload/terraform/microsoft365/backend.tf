// set terraform cloud organization and workspaceterraform
terraform {

  required_providers {
    microsoft365 = {
      source  = "deploymenttheory/microsoft365"
      version = "0.20.0-alpha"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.4.0"
    }
    
  }

  cloud {
    organization = "deploymenttheory"

    workspaces {
      # This is only relevant for CLI calls and is ignored by API calls via pipelines, therefore it can be safely left here.
      tags = ["microsoft_365"]
    }
  }
}
