# resource "microsoft365_graph_beta_device_management_assignment_filter" "assignment_filter" {
#   display_name = "tf-localtest-assignment-filter-singleton"
#   description  = "This is assignment filter singleton deployment test"
  
#   platform                          = "iOS"
#   rule                              = "(device.manufacturer -eq \"thing\")"
#   assignment_filter_management_type = "devices"
#   role_scope_tags                   = [8, 9]
  
#   timeouts = {
#     create = "60s"
#     read   = "60s"
#     update = "60s"
#     delete = "60s"
#   }
# }

# // Load test example with a single resource
# locals {
#   # Base configuration for all filters
#   common_config = {
#     platform                          = "iOS"
#     rule                              = "(device.manufacturer -eq \"thing\")"
#     assignment_filter_management_type = "devices"
#     role_scope_tags                   = [8, 9]
#     timeouts = {
#       create = "60s"
#       read   = "60s"
#       update = "60s"
#       delete = "60s"
#     }
#   }
# }

# resource "microsoft365_graph_beta_device_management_assignment_filter" "filters" {
#   count = 100

#   display_name = "tf-localtest-assignment-filter-${format("%03d", count.index + 1)}"
#   description  = "This is assignment filter ${count.index + 1} of 100"

#   # Merge common configuration with unique properties
#   platform                          = local.common_config.platform
#   rule                              = local.common_config.rule
#   assignment_filter_management_type = local.common_config.assignment_filter_management_type
#   role_scope_tags                   = local.common_config.role_scope_tags
#   timeouts                          = local.common_config.timeouts
# }
