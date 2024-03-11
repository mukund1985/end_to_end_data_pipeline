variable "environment" {
  description = "The deployment environment prefix for resource naming."
  type        = string
  default     = "dev" # Default can be dev, staging, or prod.
}

variable "location" {
  description = "The location where the Azure Data Factory will be created."
  type        = string
  // Example default could be "East US". Replace with your preferred location.
  default = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group where the Azure Data Factory will be created."
  type        = string
  // Ensure a default value is provided or passed at runtime.
}

# Add any other variables required for the Data Factory module.
