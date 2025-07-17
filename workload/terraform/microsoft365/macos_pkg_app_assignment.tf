# ########################################################################################
# # macOS PKG Assignment Examples
# ########################################################################################

# # Resource for assigning a macos_pkg_app (mozilla_firefox_140) to all licensed users
# resource "microsoft365_graph_beta_device_and_app_management_mobile_app_assignment" "mozilla_firefox_140_all_users" {
#   mobile_app_id = microsoft365_graph_beta_device_and_app_management_macos_pkg_app.mozilla_firefox_140.id
#   intent        = "required"
#   source        = "direct"

#   target = {
#     target_type                                      = "allLicensedUsers"
#     device_and_app_management_assignment_filter_type = "none"
#   }

#   timeouts = {
#     create = "30s"
#     read   = "30s"
#     update = "30s"
#     delete = "30s"
#   }
# }

# # Resource for assigning a macos_pkg_app (mozilla_firefox_140) to all devices
# resource "microsoft365_graph_beta_device_and_app_management_mobile_app_assignment" "mozilla_firefox_140_all_devices" {
#   mobile_app_id = microsoft365_graph_beta_device_and_app_management_macos_pkg_app.mozilla_firefox_140.id
#   intent        = "required"
#   source        = "direct"

#   target = {
#     target_type                                      = "allDevices"
#     device_and_app_management_assignment_filter_type = "none"
#   }

#   timeouts = {
#     create = "30s"
#     read   = "30s"
#     update = "30s"
#     delete = "30s"
#   }
# }

# # Resource for assigning mozilla_firefox_140 to a specific group with available install intent
# resource "microsoft365_graph_beta_device_and_app_management_mobile_app_assignment" "mozilla_firefox_140_group_assignment_available" {
#   mobile_app_id = microsoft365_graph_beta_device_and_app_management_macos_pkg_app.mozilla_firefox_140.id
#   intent        = "available"
#   source        = "direct"

#   target = {
#     target_type                                      = "groupAssignment"
#     group_id                                         = "2c39cf3d-78ef-4227-acb1-3a14fc7fbb99"
#     device_and_app_management_assignment_filter_type = "none"
#   }

#   timeouts = {
#     create = "30s"
#     read   = "30s"
#     update = "30s"
#     delete = "30s"
#   }
# }

# # Resource for assigning mozilla_firefox_140 to a specific group with required install intent
# resource "microsoft365_graph_beta_device_and_app_management_mobile_app_assignment" "mozilla_firefox_140_group_assignment_required" {
#   mobile_app_id = microsoft365_graph_beta_device_and_app_management_macos_pkg_app.mozilla_firefox_140.id
#   intent        = "required"
#   source        = "direct"

#   target = {
#     target_type                                      = "groupAssignment"
#     group_id                                         = "7e30b7f0-b2f1-4220-883f-f1d8066eef2d"
#     device_and_app_management_assignment_filter_type = "none"
#   }

#   timeouts = {
#     create = "30s"
#     read   = "30s"
#     update = "30s"
#     delete = "30s"
#   }
# }