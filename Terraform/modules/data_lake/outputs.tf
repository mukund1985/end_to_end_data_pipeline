output "data_lake_storage_account_name" {
  value = azurerm_storage_account.data_lake_storage.name
}

output "data_lake_storage_account_id" {
  value = azurerm_storage_account.data_lake_storage.id
}

output "data_lake_file_system_id" {
  value = azurerm_storage_data_lake_gen2_filesystem.data_lake_fs.id
}
