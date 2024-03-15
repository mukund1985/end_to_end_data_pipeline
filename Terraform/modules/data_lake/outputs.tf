output "data_lake_storage_account_name" {
  value       = azurerm_storage_account.data_lake.name
  description = "The name of the Data Lake Storage Account."
}

output "data_lake_gen2_filesystem_id" {
  value       = azurerm_storage_data_lake_gen2_filesystem.data_lake_filesystem.id
  description = "The filesystem ID for the Data Lake Storage Gen2 account."
}
