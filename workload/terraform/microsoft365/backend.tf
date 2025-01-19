// set terraform cloud organization and workspaceterraform
terraform {

  required_providers {
    jamfpro = {
      source  = "deploymenttheory/microsoft365"
      version = "~> 0.9.0"
    }
  }

  cloud {
    organization = "deploymenttheory"

    workspaces {
      # This is only relevant for CLI calls and is ignored by API calls via pipelines, therefore it can be safely left here.
      name = "terraform-demo-microsoft365-sandbox"
      tags = ["jamf_pro"]
    }
  }
}
