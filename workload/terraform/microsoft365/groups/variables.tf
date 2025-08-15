# Variables for groups workspace

variable "workspace_type" {
  description = "The type of workspace (groups, device-management, etc.)"
  type        = string
  default     = "groups"
}

variable "group_assignment_scope" {
  description = "The scope for group assignments"
  type        = string
  default     = "all"
}

variable "target_platform" {
  description = "Target platform for group assignments"
  type        = string
  default     = ""
}