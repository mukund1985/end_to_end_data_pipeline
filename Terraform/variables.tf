# Resource Group Name
variable "resource_group_name" {
  description = "The name of the Resource Group."
}

# Location
variable "location" {
  description = "The location of the Azure resources."
}

# Storage Account Prefix
variable "storage_account_prefix" {
  description = "Prefix for the storage account name, ensuring uniqueness."
  type        = string
  # Adjust the default to something more relevant to your project
  default = "datapipeline" # Example default, adjust as needed
}


# Container Name
variable "container_name" {
  description = "The name of the container within the storage account."
}

# Key Vault Name
variable "key_vault_name" {
  description = "Name of the Azure Key Vault."
}

# Tenant ID
variable "tenant_id" {
  description = "The Azure AD tenant ID."
}

# SKU Name for the Key Vault
variable "sku_name" {
  description = "The SKU name for the Key Vault. Possible values are standard and premium."
  type        = string
  default     = "standard"
}

# Soft Delete Retention Days
variable "soft_delete_retention_days" {
  description = "Number of days to retain deleted items before permanent deletion."
  type        = number
  default     = 90
}

# Purge Protection Enabled
variable "purge_protection_enabled" {
  description = "Enable or disable purge protection for the Key Vault."
  type        = bool
  default     = true
}

# Network ACLs Default Action
variable "network_acls_default_action" {
  description = "Default action for network ACLs."
  type        = string
  default     = "Deny"
}

# Network ACLs Bypass
variable "network_acls_bypass" {
  description = "Specifies which traffic can bypass the network ACLs."
  type        = string
  default     = "AzureServices"
}

# Deployment Environment Prefix
variable "environment" {
  description = "The deployment environment prefix for resource naming."
  type        = string
}

# Virtual Network Name
variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

# Virtual Network Address Space
variable "vnet_address_space" {
  description = "The address space for the virtual network in CIDR notation."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

# Subnet Name
variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

# Subnet Address Prefixes
variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet in CIDR notation."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
