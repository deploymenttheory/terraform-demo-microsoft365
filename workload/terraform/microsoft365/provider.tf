# Entra ID provider
provider "azuread" {
  //alias = "azuread_provider"
  # Explicitly disable CLI usage and use Service Principal authentication
  use_cli = false
  
  # Explicitly set credentials
  tenant_id     = var.tenant_id
  client_id     = var.client_id
  client_secret = var.client_secret
}

# Example m365 provider
provider "microsoft365" {
  //alias = "microsoft365_provider"
  cloud            = var.cloud
  tenant_id        = var.tenant_id
  auth_method      = var.auth_method
  telemetry_optout = var.telemetry_optout
  debug_mode       = var.debug_mode

  entra_id_options = {
    client_id                    = var.client_id
    client_secret                = var.client_secret
    client_certificate           = var.client_certificate_file_path
    client_certificate_password  = var.client_certificate_password
    send_certificate_chain       = var.send_certificate_chain
    username                     = var.username
    disable_instance_discovery   = var.disable_instance_discovery
    additionally_allowed_tenants = var.additionally_allowed_tenants
    redirect_url                 = var.redirect_url
  }

  client_options = {
    enable_headers_inspection = var.enable_headers_inspection
    enable_retry              = var.enable_retry
    max_retries               = var.max_retries
    retry_delay_seconds       = var.retry_delay_seconds
    enable_redirect           = var.enable_redirect
    max_redirects             = var.max_redirects
    enable_compression        = var.enable_compression
    custom_user_agent         = var.custom_user_agent
    use_proxy                 = var.use_proxy
    proxy_url                 = var.proxy_url
    proxy_username            = var.proxy_username
    proxy_password            = var.proxy_password
    timeout_seconds           = var.timeout_seconds
    enable_chaos              = var.enable_chaos
    chaos_percentage          = var.chaos_percentage
    chaos_status_code         = var.chaos_status_code
    chaos_status_message      = var.chaos_status_message
  }
}