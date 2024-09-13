resource "microsoft365_graph_beta_device_and_app_management_assignment_filter" "device_and_app_management_assignment_filter_001" {
  display_name                      = "tf-demo-assignment-filter"
  description                       = "This is an example assignment filter"
  platform                          = "iOS" 
  rule                              = "(device.manufacturer -eq \"thing\")"
  assignment_filter_management_type = "devices"

  role_scope_tags = []

  timeouts = {
    create = "10s"
    read   = "10s"
    update = "10s"
    delete = "10s"
  }
}
