variable "organization_name" {
  description = "Terraform Cloud organization name"
  type        = string
  default     = "deploymenttheory"
}

variable "project_name" {
  description = "Project name in Terraform Cloud"
  type        = string
  default     = "microsoft_365"
}

variable "project_description" {
  description = "Project description"
  type        = string
  default     = "Microsoft 365 managed as code"
}

variable "terraform_version" {
  description = "Terraform version to use for workspaces"
  type        = string
  default     = "1.12.2"
}

variable "auto_apply_sandbox" {
  description = "Enable auto-apply for sandbox environments"
  type        = bool
  default     = false
}

variable "speculative_enabled" {
  description = "Enable speculative plans"
  type        = bool
  default     = true
}

variable "m365_cloud" {
  description = "Microsoft 365 cloud environment"
  type        = string
  default     = "public"
}

variable "tf_log_level" {
  description = "Terraform log level"
  type        = string
  default     = "INFO"
}

variable "m365_debug_mode" {
  description = "Enable debug mode for Microsoft 365 provider"
  type        = string
  default     = "false"
}

variable "m365_telemetry_optout" {
  description = "Opt out of telemetry for Microsoft 365 provider"
  type        = string
  default     = "true"
}

variable "tfe_parallelism" {
  description = "Terraform Cloud parallelism"
  type        = string
  default     = "1"
}

# Optional variables for additional features
variable "slack_webhook_url" {
  description = "Slack webhook URL for notifications"
  type        = string
  default     = ""
  sensitive   = true
}

variable "notification_email_addresses" {
  description = "List of email addresses for notifications"
  type        = list(string)
  default     = []
}

variable "enable_policies" {
  description = "Enable policy sets for workspaces"
  type        = bool
  default     = false
}

variable "enable_notifications" {
  description = "Enable notification configurations"
  type        = bool
  default     = false
}

variable "enable_team_access" {
  description = "Enable team access configurations"
  type        = bool
  default     = false
}

variable "vcs_repo_staging" {
  description = "VCS repository configuration for staging workspaces"
  type = object({
    identifier     = string
    branch         = optional(string, "staging")
    oauth_token_id = string
  })
  default = null
}

variable "vcs_repo_production" {
  description = "VCS repository configuration for production workspaces"
  type = object({
    identifier     = string
    branch         = optional(string, "main")
    oauth_token_id = string
  })
  default = null
}

# Terraform version management
variable "terraform_versions" {
  description = "List of Terraform versions to make available in the organization"
  type        = list(string)
  default     = ["1.12.2", "1.11.7", "1.10.8"]
}

variable "terraform_version_shas" {
  description = "SHA256 checksums for Terraform versions"
  type        = map(string)
  default = {
    "1.12.2" = "b0932a7a5e4b4d50c94f895473e8e0d5c93d6b4b0f4b5b7b35e5a2b5b3e7a0e1e"
    "1.11.7" = "6441a1b1b6b0b4b5b8e8d0a0b2b5b3e7a0e1e4b5b7b35e5a2b5b3e7a0e1e4b5b"
    "1.10.8" = "f5a6e5b3e7a0e1e4b5b7b35e5a2b5b3e7a0e1e4b5b7b35e5a2b5b3e7a0e1e4b5"
  }
}

# Provider registry management
variable "enable_additional_providers" {
  description = "Enable additional providers in the registry"
  type        = bool
  default     = true
}