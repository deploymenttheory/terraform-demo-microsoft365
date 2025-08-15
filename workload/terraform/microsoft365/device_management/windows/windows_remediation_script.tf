
resource "microsoft365_graph_beta_device_management_windows_remediation_script" "example" {
  display_name               = "Windows Security Remediation Script"
  description                = "Detects and remediates common security issues"
  publisher                  = "IT Security Team"
  detection_script_content   = <<-EOT
    # Detection script logic
    if (Test-Path "C:\Temp\issues.txt") {
      Write-Host "Issue detected"
      Exit 1
    } else {
      Write-Host "No issues found"
      Exit 0
    }
  EOT
  remediation_script_content = <<-EOT
    # Remediation script logic
    Remove-Item "C:\Temp\issues.txt" -Force
    Write-Host "Issue remediated"
    Exit 0
  EOT
  run_as_account             = "system"

  # Assignments are defined as a set
  assignments = [
    # Assignment targeting all devices with a daily schedule
    {
      type        = "allDevicesAssignmentTarget"
      filter_id   = "dc20e791-31c9-47d1-8e74-ae7995cabb09"
      filter_type = "include"

      daily_schedule = {
        interval = 1
        time     = "23:51:59"
        use_utc  = true
      }
    },
    {
      type        = "allLicensedUsersAssignmentTarget"
      filter_id   = local.common_filter_1
      filter_type = "include"

      hourly_schedule = {
        interval = 8
      }
    },
    {
      type     = "exclusionGroupAssignmentTarget"
      group_id = "f6ebd6ff-501e-4b3d-a00b-a2e102c3fa0f"
    },
    {
      type     = "exclusionGroupAssignmentTarget"
      group_id = "b8c661c2-fa9a-4351-af86-adc1729c343f"
    },
    {
      type        = "groupAssignmentTarget"
      group_id    = "b15228f4-9d49-41ed-9b4f-0e7c721fd9c2"
      filter_id   = local.common_filter_1
      filter_type = "exclude"

      run_once_schedule = {
        date    = "2023-12-31"
        time    = "23:57:59"
        use_utc = true
      }
    },
    {
      type        = "groupAssignmentTarget"
      group_id    = "51a96cdd-4b9b-4849-b416-8c94a6d88797"
      filter_id   = local.common_filter_1
      filter_type = "include"

      daily_schedule = {
        interval = 1
        time     = "23:57:59"
        use_utc  = true
      }
    },

  ]

  timeouts = {
    create = "30m"
    read   = "5m"
    update = "30m"
    delete = "30m"
  }
}