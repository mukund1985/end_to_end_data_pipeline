variable "environment" {
  description = "The deployment environment."
}

variable "resource_group_name" {
  description = "The name of the resource group."
}

variable "location" {
  description = "The location for all resources."
}

variable "data_lake_gen2_filesystem_id" {
  description = "The Data Lake Gen2 filesystem ID."
}

variable "sql_admin_login" {
  description = "The login for the SQL admin."
}

variable "sql_admin_password" {
  description = "The password for the SQL admin."
}
