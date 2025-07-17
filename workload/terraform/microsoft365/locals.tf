# locals {
#   cloud_pc_group_id = regex("[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}", azuread_group.cloud_pc_users.id)
#   cloud_pc_devices_group_id = regex("[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}", azuread_group.cloud_pc_devices.id)
# }


# locals {
#   all_macos_laptops_group_id       = regex("[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}", azuread_group.all_macos_laptops.id)
#   all_macos_intel_devices_group_id = regex("[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}", azuread_group.all_macos_intel_devices.id)
# }