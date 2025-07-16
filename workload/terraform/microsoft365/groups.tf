resource "azuread_user" "group_owner" {
  user_principal_name = "tf-demo-example-group-owner@deploymenttheory.com"
  display_name        = "tf-demo-example-group-owner"
  mail_nickname       = "tf-demo-example-group-owner"
  password            = "SecretP@sswd99!"
}

resource "azuread_group" "example" {
  display_name     = "tf-demo-w365-group"
  owners           = [data.azuread_client_config.group_owner.object_id]
  security_enabled = true
  types            = ["DynamicMembership"]

  dynamic_membership {
    enabled = true
    rule    = "user.department -eq \"Sales\""
  }
}