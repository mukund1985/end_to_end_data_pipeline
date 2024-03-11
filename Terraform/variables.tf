# Variable Declarations with Descriptions for Clarity and Future Reference

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

# SKU Name
variable "sku_name" {
  description = "The SKU name for the Key Vault. Possible values are standard and premium."
  default     = "standard"
}

# Soft Delete Retention Days
variable "soft_delete_retention_days" {
  description = "Number of days to retain deleted items before permanent deletion."
}

# Purge Protection Enabled
variable "purge_protection_enabled" {
  description = "Enable or disable purge protection for the Key Vault."
}

# Network ACLs Default Action
variable "network_acls_default_action" {
  description = "Default action for network ACLs."
}

# Network ACLs Bypass
variable "network_acls_bypass" {
  description = "Specifies which traffic can bypass the network ACLs."
}
