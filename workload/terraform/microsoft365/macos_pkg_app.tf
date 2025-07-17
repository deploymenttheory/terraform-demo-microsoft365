# resource "microsoft365_graph_beta_device_and_app_management_macos_pkg_app" "mozilla_firefox_140" {
#   display_name            = "Firefox 140.0.pkg"
#   description             = "Deployed by Terraform"
#   publisher               = "Example Publisher"
#   is_featured             = true
#   privacy_information_url = "https://example.com/privacy"
#   information_url         = "https://example.com/info"
#   owner                   = "Example Owner"
#   developer               = "Example Developer"
#   notes                   = "This is a macOS PKG application managed through Terraform."
#   role_scope_tag_ids      = [ "0"]

#   categories = [
#     "Business",                                                                        
#     "Productivity",
#   ]

#   app_installer = {
#     installer_url_source       = "https://ftp.mozilla.org/pub/firefox/releases/140.0/mac/en-GB/Firefox%20140.0.pkg"
#   }

#   macos_pkg_app = {
#     ignore_version_detection = true

#     minimum_supported_operating_system = {
#       v14_0 = true
#     }

#     pre_install_script = {
#       script_content = base64encode("#!/bin/bash\necho macOS PKG Pre-install script example")
#     }

#     post_install_script = {
#       script_content = base64encode("#!/bin/bash\necho macOS PKG Post-install script example")
#     }
#   }

#   # Optional: Add timeouts block
#   timeouts = {
#     create = "3m"
#     read   = "20s"
#     update = "3m"
#     delete = "20s"
#   }
# }