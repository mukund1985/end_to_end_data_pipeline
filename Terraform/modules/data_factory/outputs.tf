output "data_factory_name" {
  value       = azurerm_data_factory.data_factory.name
  description = "The name of the Data Factory."
}

output "data_factory_id" {
  value       = azurerm_data_factory.data_factory.id
  description = "The resource ID of the Data Factory."
}

# Add any other outputs required for the Data Factory module.
