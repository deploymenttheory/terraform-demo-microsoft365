resource "microsoft365_graph_beta_device_management_macos_custom_attribute_script" "last_reboot_time" {
  custom_attribute_type = "string"
  display_name          = "Last Reboot Time"
  description           = "Last Reboot Time"
  script_content        = file("${path.module}/macos_scripts/macos_custom_attribute_scripts/last_reboot_time.sh")
  run_as_account        = "system"
  file_name             = "last_reboot_time.sh"

  assignments = {
    all_devices = false
    all_users   = false

    include_group_ids = [
      local.all_macos_laptops_group_id
    ]

    exclude_group_ids = [
      local.all_macos_intel_devices_group_id
    ]
  }

  timeouts = {
    create = "30m"
    update = "30m"
    read   = "30m"
    delete = "30m"
  }
} 