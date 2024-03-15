variable "resource_group_name" {
  description = "The name of the Resource Group."
}

variable "location" {
  description = "The location of the Azure resources."
}

variable "storage_account_prefix" {
  description = "Prefix for the storage account name, ensuring uniqueness."
  type        = string
}

variable "container_name" {
  description = "The name of the container within the storage account."
}

variable "key_vault_name" {
  description = "Name of the Azure Key Vault."
}

variable "tenant_id" {
  description = "The Azure AD tenant ID."
}

variable "sku_name" {
  description = "The SKU name for the Key Vault. Possible values are standard and premium."
  type        = string
  default     = "standard"
}

variable "soft_delete_retention_days" {
  description = "Number of days to retain deleted items before permanent deletion."
  type        = number
  default     = 90
}

variable "purge_protection_enabled" {
  description = "Enable or disable purge protection for the Key Vault."
  type        = bool
  default     = true
}

variable "network_acls_default_action" {
  description = "Default action for network ACLs."
  type        = string
  default     = "Deny"
}

variable "network_acls_bypass" {
  description = "Specifies which traffic can bypass the network ACLs."
  type        = string
  default     = "AzureServices"
}

variable "environment" {
  description = "The deployment environment prefix for resource naming."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network in CIDR notation."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet in CIDR notation."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "sql_admin_login" {
  description = "The admin login for Azure Synapse Analytics SQL pools."
  type        = string
}

variable "sql_admin_password" {
  description = "The administrator password for Azure Synapse Analytics SQL pools."
  sensitive   = true
}

variable "storage_account_connection_string" {
  description = "Connection string for the Azure storage account used in Data Factory."
  type        = string
  sensitive   = true
}


