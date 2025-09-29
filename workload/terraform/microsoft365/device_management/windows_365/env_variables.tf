# Environment-specific variables
variable "environment" {
  description = "The environment to deploy to. Valid values are 'sandbox' and 'staging'."
  type        = string
  default     = "sandbox"

  validation {
    condition     = contains(["sandbox", "staging", "production"], var.environment)
    error_message = "The environment must be one of: sandbox, staging."
  }
}

variable "email_domains" {
  description = "Map of environment to email domain"
  type        = map(string)
  default = {
    sandbox = "deploymenttheory.com"
    staging = "ignitemyfire.co.uk"
  }
}

variable "is_production" {
  description = "Whether the environment is production"
  type        = bool
  default     = false
}