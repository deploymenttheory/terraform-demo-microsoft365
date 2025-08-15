terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.68.2"
    }
  }
  required_version = ">= 1.0"
}

provider "tfe" {
  # Token will be provided via TFE_TOKEN environment variable
}