# Variables for macos device management workspace

variable "workspace_type" {
  description = "The type of workspace (macos, device-management, etc.)"
  type        = string
  default     = "macos"
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