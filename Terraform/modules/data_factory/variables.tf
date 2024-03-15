variable "environment" {
  description = "The deployment environment."
}

variable "location" {
  description = "The location for all resources."
}

variable "resource_group_name" {
  description = "The name of the resource group."
}

variable "storage_account_connection_string" {
  description = "Connection string for the Azure storage account used in Data Factory."
  type        = string
  sensitive   = true
}
