resource "azurerm_storage_account" "data_lake" {
  name                     = "e2edatalake${var.environment}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = true
}

# Define additional configurations such as containers, file systems, etc.

resource "azurerm_storage_data_lake_gen2_filesystem" "data_lake_filesystem" {
  name               = "datalakefilesystem"
  storage_account_id = azurerm_storage_account.data_lake.id
}

