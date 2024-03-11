resource "azurerm_storage_account" "data_lake_storage" {
  # name                     = "e2e-${var.environment}-datalake${random_string.storage_suffix.result}"
  name                     = "e2e-${var.environment}-datalake"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "ZRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = true # Required for Data Lake Storage Gen2

  # Additional configurations...
}

resource "random_string" "storage_suffix" {
  length  = 4
  special = false
  upper   = false
}

# Data Lake File System
resource "azurerm_storage_data_lake_gen2_filesystem" "data_lake_fs" {
  name               = "filesystem"
  storage_account_id = azurerm_storage_account.data_lake_storage.id

  # Additional configurations...
}
