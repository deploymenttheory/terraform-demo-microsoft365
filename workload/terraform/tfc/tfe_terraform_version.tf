# TFE Terraform Version resources

# Make specific Terraform versions available in the organization
resource "tfe_terraform_version" "versions" {
  for_each = toset(var.terraform_versions)

  version  = each.value
  url      = "https://releases.hashicorp.com/terraform/${each.value}/terraform_${each.value}_linux_amd64.zip"
  sha      = var.terraform_version_shas[each.value]
  official = true
  enabled  = true
  beta     = false
}