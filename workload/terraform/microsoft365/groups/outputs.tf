# Outputs for groups workspace - expose group IDs for other workspaces

# macOS Groups
output "all_macos_laptops_group_id" {
  description = "Object ID of all macOS laptops group"
  value       = local.all_macos_laptops_group_id
}

output "all_macos_intel_devices_group_id" {
  description = "Object ID of all macOS Intel devices group"
  value       = local.all_macos_intel_devices_group_id
}

# Deployment Ring Groups (from locals in device_configuration_deployment_ring_groups.tf)
output "deployment_ring_groups" {
  description = "Map of all deployment ring group IDs"
  value       = local.deployment_ring_groups
}

# Individual deployment ring outputs for easy reference
output "intune_deployment_ring_1_pilot_id" {
  description = "Object ID of Intune deployment ring 1 (pilot)"
  value       = azuread_group.intune_deployment_ring_1_pilot.object_id
}

output "intune_deployment_ring_2_early_adopters_id" {
  description = "Object ID of Intune deployment ring 2 (early adopters)"
  value       = azuread_group.intune_deployment_ring_2_early_adopters.object_id
}

output "intune_deployment_ring_3_broad_id" {
  description = "Object ID of Intune deployment ring 3 (broad)"
  value       = azuread_group.intune_deployment_ring_3_broad.object_id
}

output "intune_deployment_ring_4_critical_id" {
  description = "Object ID of Intune deployment ring 4 (critical)"
  value       = azuread_group.intune_deployment_ring_4_critical.object_id
}

# Platform-specific deployment rings
output "intune_deployment_macos_pilot_id" {
  description = "Object ID of macOS pilot deployment ring"
  value       = azuread_group.intune_deployment_macos_pilot.object_id
}

output "intune_deployment_macos_production_id" {
  description = "Object ID of macOS production deployment ring"
  value       = azuread_group.intune_deployment_macos_production.object_id
}

output "intune_deployment_windows_pilot_id" {
  description = "Object ID of Windows pilot deployment ring"
  value       = azuread_group.intune_deployment_windows_pilot.object_id
}

output "intune_deployment_windows_production_id" {
  description = "Object ID of Windows production deployment ring"
  value       = azuread_group.intune_deployment_windows_production.object_id
}