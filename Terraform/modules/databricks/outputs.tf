output "databricks_workspace_name" {
  value       = azurerm_databricks_workspace.databricks.name
  description = "The name of the Databricks workspace."
}
