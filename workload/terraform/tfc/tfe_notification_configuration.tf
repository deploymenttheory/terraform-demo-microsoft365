# TFE Notification Configuration resources (optional - uncomment to enable)

# Example: Slack notifications for production workspaces
# resource "tfe_notification_configuration" "production_slack" {
#   for_each = {
#     for k, v in tfe_workspace.domain_workspaces : k => v
#     if endswith(v.name, "_production")
#   }
# 
#   name             = "${each.value.name}-slack-notifications"
#   enabled          = true
#   destination_type = "slack"
#   triggers         = ["run:applying", "run:completed", "run:errored"]
#   url              = var.slack_webhook_url
#   workspace_id     = each.value.id
# }

# Example: Email notifications for failed runs
# resource "tfe_notification_configuration" "email_failures" {
#   for_each = tfe_workspace.domain_workspaces
# 
#   name             = "${each.value.name}-email-failures"
#   enabled          = true
#   destination_type = "email"
#   triggers         = ["run:errored"]
#   email_addresses  = var.notification_email_addresses
#   workspace_id     = each.value.id
# }