# Intune Device Configuration Deployment Ring Groups
# This file creates Azure AD security groups for implementing deployment rings in Microsoft Intune
# Deployment rings allow for phased rollouts of device configurations, policies, and applications

# Ring 1: Pilot/Test Ring - IT Administrators and Test Devices
resource "azuread_group" "intune_deployment_ring_1_pilot" {
  display_name     = "Intune Deployment Ring 1 - Pilot"
  description      = "Pilot deployment ring for Intune configurations - IT staff and test devices"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Ring 2: Early Adopters - Volunteer users and non-critical systems
resource "azuread_group" "intune_deployment_ring_2_early_adopters" {
  display_name     = "Intune Deployment Ring 2 - Early Adopters"
  description      = "Early adopter deployment ring for Intune configurations - volunteer users"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Ring 3: Broad Deployment - Most users and devices (non-critical business functions)
resource "azuread_group" "intune_deployment_ring_3_broad" {
  display_name     = "Intune Deployment Ring 3 - Broad Deployment"
  description      = "Broad deployment ring for Intune configurations - general user population"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Ring 4: Critical Systems - Mission-critical users and systems (last to receive updates)
resource "azuread_group" "intune_deployment_ring_4_critical" {
  display_name     = "Intune Deployment Ring 4 - Critical Systems"
  description      = "Critical systems deployment ring for Intune configurations - mission-critical systems"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Platform-specific deployment rings for Windows devices
resource "azuread_group" "intune_deployment_windows_pilot" {
  display_name     = "Intune Windows Deployment - Pilot"
  description      = "Pilot deployment ring for Windows device configurations"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

resource "azuread_group" "intune_deployment_windows_production" {
  display_name     = "Intune Windows Deployment - Production"
  description      = "Production deployment ring for Windows device configurations"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Platform-specific deployment rings for macOS devices
resource "azuread_group" "intune_deployment_macos_pilot" {
  display_name     = "Intune macOS Deployment - Pilot"
  description      = "Pilot deployment ring for macOS device configurations"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

resource "azuread_group" "intune_deployment_macos_production" {
  display_name     = "Intune macOS Deployment - Production"
  description      = "Production deployment ring for macOS device configurations"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Platform-specific deployment rings for iOS devices
resource "azuread_group" "intune_deployment_ios_pilot" {
  display_name     = "Intune iOS Deployment - Pilot"
  description      = "Pilot deployment ring for iOS device configurations"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

resource "azuread_group" "intune_deployment_ios_production" {
  display_name     = "Intune iOS Deployment - Production"
  description      = "Production deployment ring for iOS device configurations"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Platform-specific deployment rings for Android devices
resource "azuread_group" "intune_deployment_android_pilot" {
  display_name     = "Intune Android Deployment - Pilot"
  description      = "Pilot deployment ring for Android device configurations"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

resource "azuread_group" "intune_deployment_android_production" {
  display_name     = "Intune Android Deployment - Production"
  description      = "Production deployment ring for Android device configurations"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Application-specific deployment rings
resource "azuread_group" "intune_app_deployment_pilot" {
  display_name     = "Intune App Deployment - Pilot"
  description      = "Pilot deployment ring for Intune application deployments"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

resource "azuread_group" "intune_app_deployment_production" {
  display_name     = "Intune App Deployment - Production"
  description      = "Production deployment ring for Intune application deployments"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Security policy deployment rings
resource "azuread_group" "intune_security_policy_pilot" {
  display_name     = "Intune Security Policy - Pilot"
  description      = "Pilot deployment ring for Intune security policies"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

resource "azuread_group" "intune_security_policy_production" {
  display_name     = "Intune Security Policy - Production"
  description      = "Production deployment ring for Intune security policies"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Compliance policy deployment rings
resource "azuread_group" "intune_compliance_policy_pilot" {
  display_name     = "Intune Compliance Policy - Pilot"
  description      = "Pilot deployment ring for Intune compliance policies"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

resource "azuread_group" "intune_compliance_policy_production" {
  display_name     = "Intune Compliance Policy - Production"
  description      = "Production deployment ring for Intune compliance policies"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Exclusion groups for maintenance windows and emergency exclusions
resource "azuread_group" "intune_deployment_exclusion_maintenance" {
  display_name     = "Intune Deployment Exclusion - Maintenance"
  description      = "Temporary exclusion group for devices undergoing maintenance"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

resource "azuread_group" "intune_deployment_exclusion_emergency" {
  display_name     = "Intune Deployment Exclusion - Emergency"
  description      = "Emergency exclusion group for devices with critical issues"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Department-based deployment rings
resource "azuread_group" "intune_deployment_it_department" {
  display_name     = "Intune Deployment - IT Department"
  description      = "Deployment ring for IT department devices and users"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

resource "azuread_group" "intune_deployment_finance_department" {
  display_name     = "Intune Deployment - Finance Department"
  description      = "Deployment ring for Finance department devices and users"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

resource "azuread_group" "intune_deployment_hr_department" {
  display_name     = "Intune Deployment - HR Department"
  description      = "Deployment ring for HR department devices and users"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# VIP/Executive deployment ring - gets updates last for stability
resource "azuread_group" "intune_deployment_vip_executives" {
  display_name     = "Intune Deployment - VIP/Executives"
  description      = "Deployment ring for VIP and executive devices - highest stability priority"
  security_enabled = true
  mail_enabled     = false

  owners = [
    data.azuread_client_config.current.object_id
  ]

  members = []

  assignable_to_role = false

  lifecycle {
    ignore_changes = [members]
  }
}

# Outputs for referencing these groups in other configurations
locals {
  deployment_ring_groups = {
    # Main deployment rings
    ring_1_pilot          = azuread_group.intune_deployment_ring_1_pilot.object_id
    ring_2_early_adopters = azuread_group.intune_deployment_ring_2_early_adopters.object_id
    ring_3_broad          = azuread_group.intune_deployment_ring_3_broad.object_id
    ring_4_critical       = azuread_group.intune_deployment_ring_4_critical.object_id

    # Platform-specific rings
    windows_pilot      = azuread_group.intune_deployment_windows_pilot.object_id
    windows_production = azuread_group.intune_deployment_windows_production.object_id
    macos_pilot        = azuread_group.intune_deployment_macos_pilot.object_id
    macos_production   = azuread_group.intune_deployment_macos_production.object_id
    ios_pilot          = azuread_group.intune_deployment_ios_pilot.object_id
    ios_production     = azuread_group.intune_deployment_ios_production.object_id
    android_pilot      = azuread_group.intune_deployment_android_pilot.object_id
    android_production = azuread_group.intune_deployment_android_production.object_id

    # Policy-specific rings
    app_pilot             = azuread_group.intune_app_deployment_pilot.object_id
    app_production        = azuread_group.intune_app_deployment_production.object_id
    security_pilot        = azuread_group.intune_security_policy_pilot.object_id
    security_production   = azuread_group.intune_security_policy_production.object_id
    compliance_pilot      = azuread_group.intune_compliance_policy_pilot.object_id
    compliance_production = azuread_group.intune_compliance_policy_production.object_id

    # Exclusion groups
    exclusion_maintenance = azuread_group.intune_deployment_exclusion_maintenance.object_id
    exclusion_emergency   = azuread_group.intune_deployment_exclusion_emergency.object_id

    # Department-based rings
    it_department      = azuread_group.intune_deployment_it_department.object_id
    finance_department = azuread_group.intune_deployment_finance_department.object_id
    hr_department      = azuread_group.intune_deployment_hr_department.object_id
    vip_executives     = azuread_group.intune_deployment_vip_executives.object_id
  }
}