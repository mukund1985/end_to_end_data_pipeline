# The deployment environment (e.g., dev, staging, prod)
variable "environment" {
  description = "The deployment environment prefix for resource naming."
  type        = string
}

# Virtual network name
variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

# Virtual network address space
variable "vnet_address_space" {
  description = "The address space for the virtual network in CIDR notation."
  type        = list(string)
  validation {
    condition     = length(var.vnet_address_space) > 0
    error_message = "The vnet_address_space list cannot be empty."
  }
}

# Resource location
variable "location" {
  description = "The location where the resources will be created."
  type        = string
}

# Resource group name
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

# Subnet name
variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

# Subnet address prefixes
variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet in CIDR notation."
  type        = list(string)
  validation {
    condition     = length(var.subnet_address_prefixes) > 0 && can(regex("^\\d+\\.\\d+\\.\\d+\\.\\d+/\\d+$", var.subnet_address_prefixes[0]))
    error_message = "The subnet_address_prefixes list must contain valid CIDR notation strings."
  }
}
