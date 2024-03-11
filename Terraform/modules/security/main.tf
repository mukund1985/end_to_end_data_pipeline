# Create an Azure Key Vault with configurable retention policies and network settings
resource "azurerm_key_vault" "kv" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
  sku_name            = var.sku_name

  # Enhanced data recovery and protection configurations
  soft_delete_retention_days = var.soft_delete_retention_days
  purge_protection_enabled   = var.purge_protection_enabled

  # Configure network access to the Key Vault
  network_acls {
    default_action = var.network_acls_default_action
    bypass         = var.network_acls_bypass
  }
}
