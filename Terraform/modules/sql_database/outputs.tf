output "sql_server_name" {
  value = azurerm_sql_server.server.name
}

output "sql_database_name" {
  value = azurerm_sql_database.db.name
}
