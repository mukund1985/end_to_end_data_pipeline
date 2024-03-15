resource "azurerm_data_factory" "data_factory" {
  name                = "e2e-${var.environment}-datafactory"
  location            = var.location
  resource_group_name = var.resource_group_name
  identity {
    type = "SystemAssigned"
  }
}
