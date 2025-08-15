# Local values and computed configurations

locals {
  # Environment definitions
  environments = ["sandbox", "staging", "production"]

  # Domain definitions with metadata
  domains = {
    device_management_windows = {
      description  = "Microsoft 365 device management for Windows devices"
      working_dir  = "workload/terraform/microsoft365/device_management/windows"
      tags         = ["device-management", "windows"]
      global_state = false
    }
    device_management_macos = {
      description  = "Microsoft 365 device management for macOS devices"
      working_dir  = "workload/terraform/microsoft365/device_management/macos"
      tags         = ["device-management", "macos"]
      global_state = false
    }
    device_management_android = {
      description  = "Microsoft 365 device management for Android devices"
      working_dir  = "workload/terraform/microsoft365/device_management/android"
      tags         = ["device-management", "android"]
      global_state = false
    }
    device_management_ios_ipados = {
      description  = "Microsoft 365 device management for iOS/iPadOS devices"
      working_dir  = "workload/terraform/microsoft365/device_management/ios_ipados"
      tags         = ["device-management", "ios"]
      global_state = false
    }
    device_management_linux = {
      description  = "Microsoft 365 device management for Linux devices"
      working_dir  = "workload/terraform/microsoft365/device_management/linux"
      tags         = ["device-management", "linux"]
      global_state = false
    }
    device_management_windows_365 = {
      description  = "Microsoft 365 device management for Windows 365 Cloud PCs"
      working_dir  = "workload/terraform/microsoft365/device_management/windows_365"
      tags         = ["device-management", "windows-365"]
      global_state = false
    }
    device_management_shared = {
      description  = "Microsoft 365 shared device management resources and configurations"
      working_dir  = "workload/terraform/microsoft365/device_management/shared"
      tags         = ["device-management", "shared", "common", "global"]
      global_state = true
    }
    device_and_app_management_windows = {
      description  = "Microsoft 365 device and application management for Windows"
      working_dir  = "workload/terraform/microsoft365/device_and_app_management/windows"
      tags         = ["device-and-app-management", "windows"]
      global_state = false
    }
    device_and_app_management_macos = {
      description  = "Microsoft 365 device and application management for macOS"
      working_dir  = "workload/terraform/microsoft365/device_and_app_management/macos"
      tags         = ["device-and-app-management", "macos"]
      global_state = false
    }
    device_and_app_management_android = {
      description  = "Microsoft 365 device and application management for Android"
      working_dir  = "workload/terraform/microsoft365/device_and_app_management/android"
      tags         = ["device-and-app-management", "android"]
      global_state = false
    }
    device_and_app_management_ios_ipados = {
      description  = "Microsoft 365 device and application management for iOS/iPadOS"
      working_dir  = "workload/terraform/microsoft365/device_and_app_management/ios_ipados"
      tags         = ["device-and-app-management", "ios"]
      global_state = false
    }
    device_and_app_management_linux = {
      description  = "Microsoft 365 device and application management for Linux"
      working_dir  = "workload/terraform/microsoft365/device_and_app_management/linux"
      tags         = ["device-and-app-management", "linux"]
      global_state = false
    }
    device_and_app_management_windows_365 = {
      description  = "Microsoft 365 device and application management for Windows 365"
      working_dir  = "workload/terraform/microsoft365/device_and_app_management/windows_365"
      tags         = ["device-and-app-management", "windows-365"]
      global_state = false
    }
    groups = {
      description  = "Microsoft 365 groups and assignment management"
      working_dir  = "workload/terraform/microsoft365/groups"
      tags         = ["groups"]
      global_state = true
    }
  }

  # Define workspace dependencies - which workspaces need state from which other workspaces
  workspace_dependencies = {
    # Device management workspaces need state from shared resources
    device_management_windows = ["device_management_shared", "groups"]
    device_management_macos = ["device_management_shared", "groups"]
    device_management_android = ["device_management_shared", "groups"]
    device_management_ios_ipados = ["device_management_shared", "groups"]
    device_management_linux = ["device_management_shared", "groups"]
    device_management_windows_365 = ["device_management_shared", "groups"]
    
    # Device and app management workspaces need state from shared resources and groups
    device_and_app_management_windows = ["device_management_shared", "groups"]
    device_and_app_management_macos = ["device_management_shared", "groups"]
    device_and_app_management_android = ["device_management_shared", "groups"]
    device_and_app_management_ios_ipados = ["device_management_shared", "groups"]
    device_and_app_management_linux = ["device_management_shared", "groups"]
    device_and_app_management_windows_365 = ["device_management_shared", "groups"]
    
    # Shared and groups workspaces don't need state from other workspaces
    device_management_shared = []
    groups = []
  }

  # Generate workspace combinations by environment
  sandbox_workspaces = {
    for domain_key in keys(local.domains) :
    domain_key => {
      domain        = domain_key
      environment   = "sandbox"
      name          = "m365_${domain_key}_sandbox"
      description   = "${local.domains[domain_key].description} (sandbox environment)"
      tags          = concat(["microsoft365", "sandbox"], local.domains[domain_key].tags)
      working_dir   = local.domains[domain_key].working_dir
      auto_apply    = var.auto_apply_sandbox
      allow_destroy = true
      global_state  = local.domains[domain_key].global_state
    }
  }

  staging_workspaces = {
    for domain_key in keys(local.domains) :
    domain_key => {
      domain        = domain_key
      environment   = "staging"
      name          = "m365_${domain_key}_staging"
      description   = "${local.domains[domain_key].description} (staging environment)"
      tags          = concat(["microsoft365", "staging"], local.domains[domain_key].tags)
      working_dir   = local.domains[domain_key].working_dir
      auto_apply    = true
      allow_destroy = true
      global_state  = local.domains[domain_key].global_state
    }
  }

  production_workspaces = {
    for domain_key in keys(local.domains) :
    domain_key => {
      domain        = domain_key
      environment   = "production"
      name          = "m365_${domain_key}_production"
      description   = "${local.domains[domain_key].description} (production environment)"
      tags          = concat(["microsoft365", "production"], local.domains[domain_key].tags)
      working_dir   = local.domains[domain_key].working_dir
      auto_apply    = false
      allow_destroy = false
      global_state  = local.domains[domain_key].global_state
    }
  }

  # Combined workspaces for backwards compatibility with variables
  all_workspaces = merge(
    { for k, v in local.sandbox_workspaces : "${k}_sandbox" => v },
    { for k, v in local.staging_workspaces : "${k}_staging" => v },
    { for k, v in local.production_workspaces : "${k}_production" => v }
  )

  # Workspace type mapping for variables
  workspace_types = {
    device_management_windows             = "windows"
    device_management_macos               = "macos"
    device_management_android             = "android"
    device_management_ios_ipados          = "ios"
    device_management_linux               = "linux"
    device_management_windows_365         = "windows-365"
    device_management_shared              = "shared"
    device_and_app_management_windows     = "app-management-windows"
    device_and_app_management_macos       = "app-management-macos"
    device_and_app_management_android     = "app-management-android"
    device_and_app_management_ios_ipados  = "app-management-ios"
    device_and_app_management_linux       = "app-management-linux"
    device_and_app_management_windows_365 = "app-management-windows-365"
    groups                                = "groups"
  }

  # Platform mapping for target_platform variable
  platform_mappings = {
    device_management_windows             = "windows"
    device_management_macos               = "macOS"
    device_management_android             = "android"
    device_management_ios_ipados          = "iOS"
    device_management_linux               = "linux"
    device_management_windows_365         = "cloudPC"
    device_and_app_management_windows     = "windows"
    device_and_app_management_macos       = "macOS"
    device_and_app_management_android     = "android"
    device_and_app_management_ios_ipados  = "iOS"
    device_and_app_management_linux       = "linux"
    device_and_app_management_windows_365 = "cloudPC"
  }
}