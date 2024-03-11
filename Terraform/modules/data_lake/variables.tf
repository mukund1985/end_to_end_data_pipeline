variable "environment" {
  description = "Deployment environment (e.g., dev, staging, prod)"
}

variable "location" {
  description = "Azure region for deploying resources"
}

variable "resource_group_name" {
  description = "Resource group name for the data lake storage account"
}
