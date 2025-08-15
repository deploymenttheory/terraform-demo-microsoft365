# resource "azuread_user" "group_owner" {
#   user_principal_name = "tf-demo-example-group-owner@deploymenttheory.com"
#   display_name        = "tf-demo-example-group-owner"
#   mail_nickname       = "tf-demo-example-group-owner"
#   password            = "SecretP@sswd99!"
# }

# resource "azuread_group" "cloud_pc_users" {
#   display_name     = "Users with Windows 365 2 vCPU 8GB Cloud PC License"
#   security_enabled = true
#   types            = ["DynamicMembership"]
#   owners           = [azuread_user.group_owner.object_id]

#   dynamic_membership {
#     enabled = true
#     rule    = "user.assignedPlans -any (assignedPlan.servicePlanId -eq \"CPC_E_2C_8GB_128GB\" and assignedPlan.capabilityStatus -eq \"Enabled\")"
#     # This is the service plan ID for Windows 365 Enterprise 2 vCPU, 8GB, 128GB
#   }
# }

# resource "azuread_group" "cloud_pc_devices" {
#   display_name     = "Windows 365 Cloud PC Devices"
#   security_enabled = true
#   types            = ["DynamicMembership"]
#   owners           = [azuread_user.group_owner.object_id]

#   dynamic_membership {
#     enabled = true
#     rule    = "(device.deviceModel -startsWith \"Cloud PC\")"
#     # Dynamic rule for devices with model starting with "Cloud PC"
#   }
# }

