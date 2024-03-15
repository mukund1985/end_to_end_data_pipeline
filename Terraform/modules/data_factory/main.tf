resource "azurerm_data_factory" "data_factory" {
  name                = "e2e-${var.environment}-datafactory"
  location            = var.location
  resource_group_name = var.resource_group_name
  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_data_factory_linked_service_blob" "blob_storage" {
  name            = "${var.environment}-blobstorage"
  data_factory_id = azurerm_data_factory.data_factory.id
  description     = "Linked Service for Azure Blob Storage"

  connection_string = var.storage_account_connection_string
}

