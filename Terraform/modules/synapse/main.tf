resource "azurerm_synapse_workspace" "synapse" {
  name                                 = "e2e-datapipeline-${var.environment}"
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  storage_data_lake_gen2_filesystem_id = var.data_lake_gen2_filesystem_id
  sql_administrator_login              = var.sql_admin_login
  sql_administrator_login_password     = var.sql_admin_password
  identity {
    type = "SystemAssigned"
  }
}

# Define other resources like Synapse SQL Pool, Spark Pool, etc.
