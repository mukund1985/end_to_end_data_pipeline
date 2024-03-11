output "data_lake_storage_account_name" {
  value       = azurerm_storage_account.data_lake.name
  description = "The name of the Data Lake Storage Account."
}
