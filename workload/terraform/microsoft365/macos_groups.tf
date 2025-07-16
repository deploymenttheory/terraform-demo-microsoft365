# resource "azuread_user" "group_owner" {
#   user_principal_name = "tf-demo-example-group-owner@deploymenttheory.com"
#   display_name        = "tf-demo-example-group-owner"
#   mail_nickname       = "tf-demo-example-group-owner"
#   password            = "SecretP@sswd99!"
# }

# resource "azuread_group" "all_macos_laptops" {
#   display_name     = "SG-DEV-MAC-ALL-LAPTOPS"
#   security_enabled = true
#   types            = ["DynamicMembership"]
#   owners           = [azuread_user.group_owner.object_id]

#   dynamic_membership {
#     enabled = true
#     rule    = "(device.deviceOSType -contains \"macOS\") or (device.deviceOSType -contains \"OS X\") or (device.deviceModel -contains \"MacBook Air\") or (device.deviceModel -contains \"MacBook Pro\")"
#     # This rule targets all macOS devices with different OS naming conventions and common Mac hardware models
#   }
# }

# resource "azuread_group" "all_macos_intel_devices" {
#   display_name     = "SG-DEV-MAC-INTEL-DEVICES"
#   security_enabled = true
#   types            = ["DynamicMembership"]
#   owners           = [azuread_user.group_owner.object_id]

#   dynamic_membership {
#     enabled = true
#     rule    = "((device.deviceOSType -contains \"macOS\") or (device.deviceOSType -contains \"OS X\")) and (device.deviceModel -notContains \"M1\") and (device.deviceModel -notContains \"M2\") and (device.deviceModel -notContains \"M3\") and (device.deviceModel -notContains \"M4\")"
#     # This rule targets Intel macOS devices by excluding Apple Silicon models (M1, M2, M3)
#   }
# }

