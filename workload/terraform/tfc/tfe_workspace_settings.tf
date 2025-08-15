# TFE Workspace Settings resources - Different execution modes per environment

# Sandbox Workspace Settings - CLI-driven (local execution)
resource "tfe_workspace_settings" "sandbox" {
  for_each = local.sandbox_workspaces

  workspace_id   = tfe_workspace.sandbox[each.key].id
  execution_mode = "local" # CLI-driven execution

  # Agent pool configuration (if using agents)
  # agent_pool_id = var.agent_pool_id
  
  # Configure global remote state for shared workspaces
  global_remote_state = each.value.global_state
}

# Staging Workspace Settings - VCS-driven (remote execution)
resource "tfe_workspace_settings" "staging" {
  for_each = local.staging_workspaces

  workspace_id   = tfe_workspace.staging[each.key].id
  execution_mode = "remote" # VCS-driven execution
  
  # Configure global remote state for shared workspaces
  global_remote_state = each.value.global_state
}

# Production Workspace Settings - VCS-driven (remote execution)
resource "tfe_workspace_settings" "production" {
  for_each = local.production_workspaces

  workspace_id   = tfe_workspace.production[each.key].id
  execution_mode = "remote" # VCS-driven execution
  
  # Configure global remote state for shared workspaces
  global_remote_state = each.value.global_state
}