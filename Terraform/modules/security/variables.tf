# The name of the Azure Key Vault.
variable "key_vault_name" {
  description = "Name of the Azure Key Vault."
  type        = string
}

# The Azure region where the Key Vault is deployed.
variable "location" {
  description = "Azure region where the Key Vault is deployed."
  type        = string
}

# The name of the resource group the Key Vault belongs to.
variable "resource_group_name" {
  description = "Resource group name that the Key Vault belongs to."
  type        = string
}

# The Azure AD tenant ID associated with the Key Vault.
variable "tenant_id" {
  description = "The Azure AD tenant ID."
  type        = string
}

# The SKU name for the Key Vault indicating the tier (Standard or Premium).
variable "sku_name" {
  description = "The SKU name for the Key Vault. Possible values are 'standard' and 'premium'."
  type        = string
  default     = "standard"
}

# Number of days to retain deleted items in the Key Vault before they are permanently deleted.
variable "soft_delete_retention_days" {
  description = "The number of days to retain deleted items in the Key Vault before permanent deletion."
  type        = number
  default     = 30
}

# Enables or disables purge protection for the Key Vault.
variable "purge_protection_enabled" {
  description = "Enables or disables the purge protection for the Key Vault."
  type        = bool
  default     = true
}

# Default action for network ACLs - typically 'Allow' or 'Deny'.
variable "network_acls_default_action" {
  description = "Default action for network ACLs. Typically 'Allow' or 'Deny'."
  type        = string
  default     = "Deny"
}

# Specifies which traffic can bypass the network ACLs, usually 'AzureServices'.
variable "network_acls_bypass" {
  description = "Specifies which traffic can bypass the network ACLs. Usually 'AzureServices'."
  type        = string
  default     = "AzureServices"
}

