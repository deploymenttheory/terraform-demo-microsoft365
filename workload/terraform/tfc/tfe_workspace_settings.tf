# TFE Workspace Settings resources - Different execution modes per environment

# Sandbox Workspace Settings - Remote execution
resource "tfe_workspace_settings" "sandbox" {
  for_each = local.sandbox_workspaces

  workspace_id   = tfe_workspace.sandbox[each.key].id
  execution_mode = "remote" # Remote execution

  # Configure remote state access - disable global access for security
  global_remote_state = false

  # Ring-fenced remote state access - only allow specific workspaces that need this workspace's state
  remote_state_consumer_ids = each.value.global_state ? toset([
    for k, v in local.sandbox_workspaces : tfe_workspace.sandbox[k].id
    if contains(local.workspace_dependencies[k], each.key)
  ]) : []
}

# Staging Workspace Settings - Remote execution
resource "tfe_workspace_settings" "staging" {
  for_each = local.staging_workspaces

  workspace_id   = tfe_workspace.staging[each.key].id
  execution_mode = "remote" # Remote execution

  # Configure remote state access - disable global access for security
  global_remote_state = false

  # Ring-fenced remote state access - only allow specific workspaces that need this workspace's state
  remote_state_consumer_ids = each.value.global_state ? toset([
    for k, v in local.staging_workspaces : tfe_workspace.staging[k].id
    if contains(local.workspace_dependencies[k], each.key)
  ]) : []

}

# Production Workspace Settings - Remote execution
resource "tfe_workspace_settings" "production" {
  for_each = local.production_workspaces

  workspace_id   = tfe_workspace.production[each.key].id
  execution_mode = "remote" # Remote execution

  # Configure remote state access - disable global access for security
  global_remote_state = false

  # Ring-fenced remote state access - only allow specific workspaces that need this workspace's state
  remote_state_consumer_ids = each.value.global_state ? toset([
    for k, v in local.production_workspaces : tfe_workspace.production[k].id
    if contains(local.workspace_dependencies[k], each.key)
  ]) : []

}