resource "azurerm_databricks_workspace" "databricks" {
  name                = "e2e-databricks-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "standard"
}

# Define other resources such as Databricks clusters, jobs, etc.
