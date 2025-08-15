# Variables for Entra ID service principal creation

variable "environment" {
  description = "Environment name for resource naming"
  type        = string
  default     = "sandbox"

  validation {
    condition     = contains(["sandbox", "staging", "production"], var.environment)
    error_message = "Environment must be one of: sandbox, staging, production."
  }
}

variable "tenant_id" {
  description = "Azure AD tenant ID"
  type        = string
  sensitive   = true
}

variable "client_id" {
  description = "Azure AD application client ID for the user running this terraform"
  type        = string
  sensitive   = true
}

variable "client_secret" {
  description = "Azure AD application client secret for the user running this terraform"
  type        = string
  sensitive   = true
}

variable "service_principal_owners" {
  description = "List of object IDs that should be owners of the created service principals"
  type        = list(string)
  default     = []
}