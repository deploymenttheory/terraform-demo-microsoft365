# TFE Workspace resources - Separated by environment for different execution modes

# Sandbox Workspaces - CLI-driven (local execution)
resource "tfe_workspace" "sandbox" {
  for_each = local.sandbox_workspaces

  name         = each.value.name
  organization = data.tfe_organization.main.name
  project_id   = tfe_project.microsoft365.id
  description  = each.value.description

  # Workspace configuration
  terraform_version             = var.terraform_version
  working_directory             = each.value.working_dir
  auto_apply                    = each.value.auto_apply
  auto_apply_run_trigger        = false
  speculative_enabled           = var.speculative_enabled
  allow_destroy_plan            = each.value.allow_destroy
  queue_all_runs                = true
  file_triggers_enabled         = false # Disabled for CLI-driven workspaces
  assessments_enabled           = true
  structured_run_output_enabled = true

  # Tags
  tag_names = each.value.tags

  # No VCS repo configuration - CLI-driven
  lifecycle {
    ignore_changes = [
      # Ignore changes to VCS repo as this is CLI-driven
      vcs_repo
    ]
  }
}

# Staging Workspaces - VCS-driven (remote execution)
resource "tfe_workspace" "staging" {
  for_each = local.staging_workspaces

  name         = each.value.name
  organization = data.tfe_organization.main.name
  project_id   = tfe_project.microsoft365.id
  description  = each.value.description

  # Workspace configuration
  terraform_version             = var.terraform_version
  working_directory             = each.value.working_dir
  auto_apply                    = each.value.auto_apply
  auto_apply_run_trigger        = true # Enable for VCS-driven workflows
  speculative_enabled           = var.speculative_enabled
  allow_destroy_plan            = each.value.allow_destroy
  queue_all_runs                = true
  file_triggers_enabled         = true
  assessments_enabled           = true
  structured_run_output_enabled = true

  # Trigger configuration - only use prefixes to avoid conflicts
  trigger_prefixes = [
    "${each.value.working_dir}/"
  ]

  # Tags
  tag_names = each.value.tags

  # VCS repository configuration for staging
  dynamic "vcs_repo" {
    for_each = var.vcs_repo_staging != null ? [var.vcs_repo_staging] : []
    content {
      identifier     = vcs_repo.value.identifier
      branch         = vcs_repo.value.branch
      oauth_token_id = vcs_repo.value.oauth_token_id
    }
  }

  lifecycle {
    ignore_changes = [
      # Allow external VCS configuration
    ]
  }
}

# Production Workspaces - VCS-driven (remote execution)
resource "tfe_workspace" "production" {
  for_each = local.production_workspaces

  name         = each.value.name
  organization = data.tfe_organization.main.name
  project_id   = tfe_project.microsoft365.id
  description  = each.value.description

  # Workspace configuration
  terraform_version             = var.terraform_version
  working_directory             = each.value.working_dir
  auto_apply                    = each.value.auto_apply
  auto_apply_run_trigger        = false # Manual approval required for production
  speculative_enabled           = var.speculative_enabled
  allow_destroy_plan            = each.value.allow_destroy
  queue_all_runs                = true
  file_triggers_enabled         = true
  assessments_enabled           = true
  structured_run_output_enabled = true

  # Trigger configuration - only use prefixes to avoid conflicts
  trigger_prefixes = [
    "${each.value.working_dir}/"
  ]

  # Tags
  tag_names = each.value.tags

  # VCS repository configuration for production
  dynamic "vcs_repo" {
    for_each = var.vcs_repo_production != null ? [var.vcs_repo_production] : []
    content {
      identifier     = vcs_repo.value.identifier
      branch         = vcs_repo.value.branch
      oauth_token_id = vcs_repo.value.oauth_token_id
    }
  }

  lifecycle {
    ignore_changes = [
      # Allow external VCS configuration
    ]
  }
}