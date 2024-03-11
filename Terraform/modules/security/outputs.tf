# Output the Azure Key Vault ID for reference in other modules or resources
output "key_vault_id" {
  value       = azurerm_key_vault.kv.id
  description = "The ID of the Key Vault."
}

# Output the Azure Key Vault URI for programmatic access in applications
output "key_vault_uri" {
  value       = azurerm_key_vault.kv.vault_uri
  description = "The URI of the Key Vault, used for accessing the secrets and keys."
}
