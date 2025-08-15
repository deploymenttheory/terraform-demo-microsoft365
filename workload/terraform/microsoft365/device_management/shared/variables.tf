# Variables for shared device management workspace

variable "workspace_type" {
  description = "The type of workspace (shared, device-management, etc.)"
  type        = string
  default     = "shared"
}

variable "group_assignment_scope" {
  description = "The scope for group assignments"
  type        = string
  default     = "all"
}

variable "target_platform" {
  description = "Target platform for device management"
  type        = string
  default     = ""
}

variable "shared_resource_scope" {
  description = "Scope for shared resources configuration"
  type        = string
  default     = "shared"
}