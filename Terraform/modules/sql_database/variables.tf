variable "resource_group_name" {
  description = "The name of the resource group where the SQL server and database will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where the SQL server and database will be created."
  type        = string
}

variable "sql_admin_login" {
  description = "The administrator login name for the SQL server."
  type        = string
}

variable "sql_admin_password" {
  description = "The administrator login password for the SQL server. This should be kept secure."
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "The deployment environment (e.g., dev, staging, prod). This affects naming conventions."
  type        = string
}

variable "client_ip_addresses" {
  description = "Optional: A list of client IP addresses to add to the SQL server firewall rules. Leave empty if not needed."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {
    "Environment" = var.environment
  }
}

