# Platform-specific variables for different workspace types

# Helper locals for platform-specific variables
locals {
  # Create domain-specific maps for each environment
  # This avoids the circular dependency by not using workspace IDs as keys
  sandbox_domain_map = {
    for domain_key in keys(local.domains) : domain_key => {
      domain = domain_key
      name   = local.sandbox_workspaces[domain_key].name
    }
  }

  staging_domain_map = {
    for domain_key in keys(local.domains) : domain_key => {
      domain = domain_key
      name   = local.staging_workspaces[domain_key].name
    }
  }

  production_domain_map = {
    for domain_key in keys(local.domains) : domain_key => {
      domain = domain_key
      name   = local.production_workspaces[domain_key].name
    }
  }
}

# Target platform variable for device and app management workspaces (sandbox)
resource "tfe_variable" "sandbox_target_platform" {
  for_each = {
    for domain_key, info in local.sandbox_domain_map : domain_key => info
    if contains([
      "device_management_windows", "device_management_macos", "device_management_android",
      "device_management_ios_ipados", "device_management_linux", "device_management_windows_365",
      "device_and_app_management_windows", "device_and_app_management_macos",
      "device_and_app_management_android", "device_and_app_management_ios_ipados",
      "device_and_app_management_linux", "device_and_app_management_windows_365"
    ], domain_key)
  }

  key          = "target_platform"
  value        = local.platform_mappings[each.key]
  category     = "terraform"
  description  = "Target platform for device/app management"
  workspace_id = tfe_workspace.sandbox[each.key].id
}

# Target platform variable for device and app management workspaces (staging)
resource "tfe_variable" "staging_target_platform" {
  for_each = {
    for domain_key, info in local.staging_domain_map : domain_key => info
    if contains([
      "device_management_windows", "device_management_macos", "device_management_android",
      "device_management_ios_ipados", "device_management_linux", "device_management_windows_365",
      "device_and_app_management_windows", "device_and_app_management_macos",
      "device_and_app_management_android", "device_and_app_management_ios_ipados",
      "device_and_app_management_linux", "device_and_app_management_windows_365"
    ], domain_key)
  }

  key          = "target_platform"
  value        = local.platform_mappings[each.key]
  category     = "terraform"
  description  = "Target platform for device/app management"
  workspace_id = tfe_workspace.staging[each.key].id
}

# Target platform variable for device and app management workspaces (production)
resource "tfe_variable" "production_target_platform" {
  for_each = {
    for domain_key, info in local.production_domain_map : domain_key => info
    if contains([
      "device_management_windows", "device_management_macos", "device_management_android",
      "device_management_ios_ipados", "device_management_linux", "device_management_windows_365",
      "device_and_app_management_windows", "device_and_app_management_macos",
      "device_and_app_management_android", "device_and_app_management_ios_ipados",
      "device_and_app_management_linux", "device_and_app_management_windows_365"
    ], domain_key)
  }

  key          = "target_platform"
  value        = local.platform_mappings[each.key]
  category     = "terraform"
  description  = "Target platform for device/app management"
  workspace_id = tfe_workspace.production[each.key].id
}

# Windows-specific variables - per environment
resource "tfe_variable" "sandbox_device_categories" {
  for_each = {
    for domain_key, info in local.sandbox_domain_map : domain_key => info
    if domain_key == "device_management_windows"
  }

  key          = "device_categories"
  value        = jsonencode(["Corporate", "Personal"])
  category     = "terraform"
  description  = "Windows device categories"
  hcl          = true
  workspace_id = tfe_workspace.sandbox[each.key].id
}

resource "tfe_variable" "staging_device_categories" {
  for_each = {
    for domain_key, info in local.staging_domain_map : domain_key => info
    if domain_key == "device_management_windows"
  }

  key          = "device_categories"
  value        = jsonencode(["Corporate", "Personal"])
  category     = "terraform"
  description  = "Windows device categories"
  hcl          = true
  workspace_id = tfe_workspace.staging[each.key].id
}

resource "tfe_variable" "production_device_categories" {
  for_each = {
    for domain_key, info in local.production_domain_map : domain_key => info
    if domain_key == "device_management_windows"
  }

  key          = "device_categories"
  value        = jsonencode(["Corporate", "Personal"])
  category     = "terraform"
  description  = "Windows device categories"
  hcl          = true
  workspace_id = tfe_workspace.production[each.key].id
}

# macOS-specific variables - per environment
resource "tfe_variable" "sandbox_macos_enrollment_type" {
  for_each = {
    for domain_key, info in local.sandbox_domain_map : domain_key => info
    if domain_key == "device_management_macos"
  }

  key          = "macos_enrollment_type"
  value        = "deviceEnrollmentManager"
  category     = "terraform"
  description  = "macOS enrollment type"
  workspace_id = tfe_workspace.sandbox[each.key].id
}

resource "tfe_variable" "staging_macos_enrollment_type" {
  for_each = {
    for domain_key, info in local.staging_domain_map : domain_key => info
    if domain_key == "device_management_macos"
  }

  key          = "macos_enrollment_type"
  value        = "deviceEnrollmentManager"
  category     = "terraform"
  description  = "macOS enrollment type"
  workspace_id = tfe_workspace.staging[each.key].id
}

resource "tfe_variable" "production_macos_enrollment_type" {
  for_each = {
    for domain_key, info in local.production_domain_map : domain_key => info
    if domain_key == "device_management_macos"
  }

  key          = "macos_enrollment_type"
  value        = "deviceEnrollmentManager"
  category     = "terraform"
  description  = "macOS enrollment type"
  workspace_id = tfe_workspace.production[each.key].id
}

# Groups-specific variables - per environment
resource "tfe_variable" "sandbox_group_assignment_scope" {
  for_each = {
    for domain_key, info in local.sandbox_domain_map : domain_key => info
    if domain_key == "groups"
  }

  key          = "group_assignment_scope"
  value        = "all"
  category     = "terraform"
  description  = "Scope for group assignments"
  workspace_id = tfe_workspace.sandbox[each.key].id
}

resource "tfe_variable" "staging_group_assignment_scope" {
  for_each = {
    for domain_key, info in local.staging_domain_map : domain_key => info
    if domain_key == "groups"
  }

  key          = "group_assignment_scope"
  value        = "all"
  category     = "terraform"
  description  = "Scope for group assignments"
  workspace_id = tfe_workspace.staging[each.key].id
}

resource "tfe_variable" "production_group_assignment_scope" {
  for_each = {
    for domain_key, info in local.production_domain_map : domain_key => info
    if domain_key == "groups"
  }

  key          = "group_assignment_scope"
  value        = "all"
  category     = "terraform"
  description  = "Scope for group assignments"
  workspace_id = tfe_workspace.production[each.key].id
}

# Shared resources variables - per environment
resource "tfe_variable" "sandbox_shared_resource_scope" {
  for_each = {
    for domain_key, info in local.sandbox_domain_map : domain_key => info
    if domain_key == "device_management_shared"
  }

  key          = "shared_resource_scope"
  value        = "organization"
  category     = "terraform"
  description  = "Scope for shared resources"
  workspace_id = tfe_workspace.sandbox[each.key].id
}

resource "tfe_variable" "staging_shared_resource_scope" {
  for_each = {
    for domain_key, info in local.staging_domain_map : domain_key => info
    if domain_key == "device_management_shared"
  }

  key          = "shared_resource_scope"
  value        = "organization"
  category     = "terraform"
  description  = "Scope for shared resources"
  workspace_id = tfe_workspace.staging[each.key].id
}

resource "tfe_variable" "production_shared_resource_scope" {
  for_each = {
    for domain_key, info in local.production_domain_map : domain_key => info
    if domain_key == "device_management_shared"
  }

  key          = "shared_resource_scope"
  value        = "organization"
  category     = "terraform"
  description  = "Scope for shared resources"
  workspace_id = tfe_workspace.production[each.key].id
}

# App management variables - per environment
resource "tfe_variable" "sandbox_app_deployment_scope" {
  for_each = {
    for domain_key, info in local.sandbox_domain_map : domain_key => info
    if startswith(domain_key, "device_and_app_management_")
  }

  key          = "app_deployment_scope"
  value        = "available"
  category     = "terraform"
  description  = "Application deployment scope"
  workspace_id = tfe_workspace.sandbox[each.key].id
}

resource "tfe_variable" "staging_app_deployment_scope" {
  for_each = {
    for domain_key, info in local.staging_domain_map : domain_key => info
    if startswith(domain_key, "device_and_app_management_")
  }

  key          = "app_deployment_scope"
  value        = "available"
  category     = "terraform"
  description  = "Application deployment scope"
  workspace_id = tfe_workspace.staging[each.key].id
}

resource "tfe_variable" "production_app_deployment_scope" {
  for_each = {
    for domain_key, info in local.production_domain_map : domain_key => info
    if startswith(domain_key, "device_and_app_management_")
  }

  key          = "app_deployment_scope"
  value        = "available"
  category     = "terraform"
  description  = "Application deployment scope"
  workspace_id = tfe_workspace.production[each.key].id
}