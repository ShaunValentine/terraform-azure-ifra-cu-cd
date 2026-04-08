variable "project_name" {
  type        = string
  description = "Project name prefix"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "uksouth"
}
