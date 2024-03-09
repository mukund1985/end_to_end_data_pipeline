variable "resource_group_name" {
  description = "The name of the Resource Group"
}

variable "location" {
  description = "The location of the Azure resources"
}

variable "storage_account_name" {
  description = "The name of the storage account"
}

variable "container_name" {
  description = "The name of the container within the storage account"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "myVnet"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet within the virtual network"
  type        = string
  default     = "mySubnet"
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
