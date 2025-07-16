//REF: https://learn.microsoft.com/en-us/intune/intune-service/fundamentals/filters-device-properties

# resource "microsoft365_graph_beta_device_management_assignment_filter" "macos_less_than_15_0" {
#   display_name                      = "macOS Less Than 15.0"
#   description                       = "Assignment filter for macOS devices with version less than 15.0"
#   platform                          = "macOS"
#   rule                              = "(device.operatingSystemVersion -lt 15.0)"
#   assignment_filter_management_type = "devices"

#   role_scope_tags = [8, 9]

#   timeouts = {
#     create = "10s"
#     read   = "10s"
#     update = "10s"
#     delete = "10s"
#   }
# }