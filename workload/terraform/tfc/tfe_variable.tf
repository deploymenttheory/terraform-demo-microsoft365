# TFE Variable resources

# Common variables in variable set
resource "tfe_variable" "m365_cloud" {
  key             = "M365_CLOUD"
  value           = var.m365_cloud
  category        = "env"
  description     = "Microsoft 365 cloud environment (public, dod, gcc, gcchigh, china, ex, rx)"
  variable_set_id = tfe_variable_set.common.id
}

resource "tfe_variable" "tf_log" {
  key             = "TF_LOG"
  value           = var.tf_log_level
  category        = "env"
  description     = "Terraform log level"
  variable_set_id = tfe_variable_set.common.id
}

resource "tfe_variable" "m365_debug_mode" {
  key             = "M365_DEBUG_MODE"
  value           = var.m365_debug_mode
  category        = "env"
  description     = "Enable debug mode for Microsoft 365 provider"
  variable_set_id = tfe_variable_set.common.id
}

resource "tfe_variable" "m365_telemetry_optout" {
  key             = "M365_TELEMETRY_OPTOUT"
  value           = var.m365_telemetry_optout
  category        = "env"
  description     = "Opt out of telemetry for Microsoft 365 provider"
  variable_set_id = tfe_variable_set.common.id
}

resource "tfe_variable" "tfe_parallelism" {
  key             = "TFE_PARALLELISM"
  value           = var.tfe_parallelism
  category        = "env"
  description     = "Terraform Cloud parallelism"
  variable_set_id = tfe_variable_set.common.id
}

# Workspace-specific variables for Sandbox workspaces
resource "tfe_variable" "sandbox_workspace_name" {
  for_each = local.sandbox_workspaces

  key          = "TF_WORKSPACE"
  value        = each.value.name
  category     = "env"
  description  = "Terraform workspace name"
  workspace_id = tfe_workspace.sandbox[each.key].id
}

resource "tfe_variable" "sandbox_environment" {
  for_each = local.sandbox_workspaces

  key          = "environment"
  value        = each.value.environment
  category     = "terraform"
  description  = "Environment name for use in Terraform code"
  workspace_id = tfe_workspace.sandbox[each.key].id
}

resource "tfe_variable" "sandbox_is_production" {
  for_each = local.sandbox_workspaces

  key          = "is_production"
  value        = "false"
  category     = "terraform"
  description  = "Boolean flag indicating if this is the production environment"
  workspace_id = tfe_workspace.sandbox[each.key].id
}

resource "tfe_variable" "sandbox_workspace_type" {
  for_each = local.sandbox_workspaces

  key          = "workspace_type"
  value        = local.workspace_types[each.value.domain]
  category     = "terraform"
  description  = "Type of workspace (windows, macos, android, etc.)"
  workspace_id = tfe_workspace.sandbox[each.key].id
}

# Workspace-specific variables for Staging workspaces
resource "tfe_variable" "staging_workspace_name" {
  for_each = local.staging_workspaces

  key          = "TF_WORKSPACE"
  value        = each.value.name
  category     = "env"
  description  = "Terraform workspace name"
  workspace_id = tfe_workspace.staging[each.key].id
}

resource "tfe_variable" "staging_environment" {
  for_each = local.staging_workspaces

  key          = "environment"
  value        = each.value.environment
  category     = "terraform"
  description  = "Environment name for use in Terraform code"
  workspace_id = tfe_workspace.staging[each.key].id
}

resource "tfe_variable" "staging_is_production" {
  for_each = local.staging_workspaces

  key          = "is_production"
  value        = "false"
  category     = "terraform"
  description  = "Boolean flag indicating if this is the production environment"
  workspace_id = tfe_workspace.staging[each.key].id
}

resource "tfe_variable" "staging_workspace_type" {
  for_each = local.staging_workspaces

  key          = "workspace_type"
  value        = local.workspace_types[each.value.domain]
  category     = "terraform"
  description  = "Type of workspace (windows, macos, android, etc.)"
  workspace_id = tfe_workspace.staging[each.key].id
}

# Workspace-specific variables for Production workspaces
resource "tfe_variable" "production_workspace_name" {
  for_each = local.production_workspaces

  key          = "TF_WORKSPACE"
  value        = each.value.name
  category     = "env"
  description  = "Terraform workspace name"
  workspace_id = tfe_workspace.production[each.key].id
}

resource "tfe_variable" "production_environment" {
  for_each = local.production_workspaces

  key          = "environment"
  value        = each.value.environment
  category     = "terraform"
  description  = "Environment name for use in Terraform code"
  workspace_id = tfe_workspace.production[each.key].id
}

resource "tfe_variable" "production_is_production" {
  for_each = local.production_workspaces

  key          = "is_production"
  value        = "true"
  category     = "terraform"
  description  = "Boolean flag indicating if this is the production environment"
  workspace_id = tfe_workspace.production[each.key].id
}

resource "tfe_variable" "production_workspace_type" {
  for_each = local.production_workspaces

  key          = "workspace_type"
  value        = local.workspace_types[each.value.domain]
  category     = "terraform"
  description  = "Type of workspace (windows, macos, android, etc.)"
  workspace_id = tfe_workspace.production[each.key].id
}

# Authentication variables for all environments - using locals helper
locals {
  # Create a map for all workspaces with their workspace IDs
  all_workspace_ids = merge(
    { for k, v in tfe_workspace.sandbox : "${k}_sandbox" => v.id },
    { for k, v in tfe_workspace.staging : "${k}_staging" => v.id },
    { for k, v in tfe_workspace.production : "${k}_production" => v.id }
  )
}

# Authentication variables (empty placeholders) for all workspaces
resource "tfe_variable" "tenant_id" {
  for_each = local.all_workspace_ids

  key          = "tenant_id"
  value        = ""
  category     = "env"
  description  = "Microsoft 365 tenant ID"
  sensitive    = true
  workspace_id = each.value
}

resource "tfe_variable" "auth_method" {
  for_each = local.all_workspace_ids

  key          = "auth_method"
  value        = ""
  category     = "env"
  description  = "Authentication method for Microsoft 365"
  workspace_id = each.value
}

resource "tfe_variable" "client_id" {
  for_each = local.all_workspace_ids

  key          = "client_id"
  value        = ""
  category     = "env"
  description  = "Microsoft 365 client ID"
  sensitive    = true
  workspace_id = each.value
}

resource "tfe_variable" "client_secret" {
  for_each = local.all_workspace_ids

  key          = "client_secret"
  value        = ""
  category     = "env"
  description  = "Client secret for Microsoft 365 authentication"
  sensitive    = true
  workspace_id = each.value
}

resource "tfe_variable" "client_certificate_file_path" {
  for_each = local.all_workspace_ids

  key          = "client_certificate_file_path"
  value        = ""
  category     = "env"
  description  = "Path to client certificate file"
  sensitive    = true
  workspace_id = each.value
}

resource "tfe_variable" "client_certificate_password" {
  for_each = local.all_workspace_ids

  key          = "client_certificate_password"
  value        = ""
  category     = "env"
  description  = "Password for client certificate"
  sensitive    = true
  workspace_id = each.value
}