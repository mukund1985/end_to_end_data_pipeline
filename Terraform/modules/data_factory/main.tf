resource "azurerm_data_factory" "data_factory" {
  name                = "e2e-${var.environment}-datafactory"
  location            = var.location
  resource_group_name = var.resource_group_name

  # Other necessary configurations...
}

# Additional resources such as linked services, datasets, pipelines, etc.
