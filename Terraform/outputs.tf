# Output the name of the created resource group for reference in other configurations or modules
output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

# Output the name of the created storage account
output "storage_account_name" {
  value = azurerm_storage_account.sa.name
}

# Output the primary access key of the storage account, marked as sensitive to prevent exposure in logs
output "storage_account_primary_access_key" {
  value     = azurerm_storage_account.sa.primary_access_key
  sensitive = true
}
