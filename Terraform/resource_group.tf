# Terraform/resource_group.tf
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
