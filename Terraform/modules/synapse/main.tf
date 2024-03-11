resource "azurerm_synapse_workspace" "synapse" {
  name                                 = "e2e${var.environment}synapse"
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  storage_data_lake_gen2_filesystem_id = var.storage_data_lake_gen2_filesystem_id
  sql_administrator_login              = "sqladminuser"
  sql_administrator_login_password     = var.sql_admin_password
  managed_virtual_network_enabled      = true

  tags = {
    environment = var.environment
  }
}

resource "azurerm_synapse_sql_pool" "sql_pool" {
  name                 = "e2e${var.environment}sqlpool"
  synapse_workspace_id = azurerm_synapse_workspace.synapse.id
  sku_name             = "DW100c"
  collation            = "SQL_Latin1_General_CP1_CI_AS"
}
