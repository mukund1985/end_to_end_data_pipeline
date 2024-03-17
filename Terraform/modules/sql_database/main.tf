resource "azurerm_mssql_server" "server" {
  name                         = "e2e-${var.environment}-sqlserver"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0" 
  administrator_login          = var.sql_admin_login
  administrator_login_password = var.sql_admin_password
}

resource "azurerm_mssql_database" "db" {
  name           = "e2e-${var.environment}-appdb"
  server_id      = azurerm_mssql_server.server.id
  sku_name       = "Basic"  
  max_size_gb    = 2
}
