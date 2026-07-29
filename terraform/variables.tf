variable "location" {
  type        = string
  description = "Azure region for the lab."
  default     = "uksouth"
}

variable "project_name" {
  type        = string
  description = "Lowercase project prefix."
  default     = "novasecure-zta"
}

variable "environment" {
  type        = string
  description = "Environment label."
  default     = "lab"
}
