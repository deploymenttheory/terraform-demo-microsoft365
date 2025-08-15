output "project_id" {
  description = "The ID of the created project"
  value       = tfe_project.microsoft365.id
}

output "workspace_ids" {
  description = "Map of workspace names to their IDs by environment"
  value = {
    sandbox = {
      for k, v in tfe_workspace.sandbox : k => v.id
    }
    staging = {
      for k, v in tfe_workspace.staging : k => v.id
    }
    production = {
      for k, v in tfe_workspace.production : k => v.id
    }
  }
}

output "workspace_names" {
  description = "List of all created workspace names by environment"
  value = {
    sandbox    = [for v in tfe_workspace.sandbox : v.name]
    staging    = [for v in tfe_workspace.staging : v.name]
    production = [for v in tfe_workspace.production : v.name]
  }
}

output "common_variable_set_id" {
  description = "ID of the common variable set"
  value       = tfe_variable_set.common.id
}

output "workspace_summary" {
  description = "Summary of created workspaces by environment"
  value = {
    sandbox = {
      count          = length(tfe_workspace.sandbox)
      execution_mode = "local (CLI-driven)"
      auto_apply     = var.auto_apply_sandbox
      workspaces     = [for v in tfe_workspace.sandbox : v.name]
    }
    staging = {
      count          = length(tfe_workspace.staging)
      execution_mode = "remote (VCS-driven)"
      auto_apply     = true
      workspaces     = [for v in tfe_workspace.staging : v.name]
    }
    production = {
      count          = length(tfe_workspace.production)
      execution_mode = "remote (VCS-driven)"
      auto_apply     = false
      workspaces     = [for v in tfe_workspace.production : v.name]
    }
  }
}

output "terraform_versions" {
  description = "List of Terraform versions made available"
  value       = var.terraform_versions
}

output "registry_providers" {
  description = "Registry providers configured"
  value = {
    microsoft365 = {
      name          = tfe_registry_provider.microsoft365.name
      namespace     = tfe_registry_provider.microsoft365.namespace
      registry_name = tfe_registry_provider.microsoft365.registry_name
    }
    additional_providers = var.enable_additional_providers ? {
      azuread = length(tfe_registry_provider.azuread) > 0 ? tfe_registry_provider.azuread[0].name : null
      azurerm = length(tfe_registry_provider.azurerm) > 0 ? tfe_registry_provider.azurerm[0].name : null
      random  = length(tfe_registry_provider.random) > 0 ? tfe_registry_provider.random[0].name : null
      time    = length(tfe_registry_provider.time) > 0 ? tfe_registry_provider.time[0].name : null
    } : {}
  }
}