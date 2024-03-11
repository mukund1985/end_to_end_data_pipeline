output "synapse_workspace_name" {
  value       = azurerm_synapse_workspace.synapse.name
  description = "The name of the Synapse workspace."
}

output "synapse_sql_pool_name" {
  value       = azurerm_synapse_sql_pool.sql_pool.name
  description = "The name of the Synapse SQL pool."
}
