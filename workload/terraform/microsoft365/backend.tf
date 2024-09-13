// set terraform cloud organization and workspaceterraform {
terraform {
  cloud {
    organization = "deploymenttheory"
    workspaces {
      tags = ["Microsoft 365"]
    }
  }
}