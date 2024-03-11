# Azure Virtual Network
resource "azurerm_virtual_network" "vnet" {
  # Incorporating the environment into the resource name for clarity
  name                = "${var.environment}-${var.vnet_name}"
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

# Azure Subnet
resource "azurerm_subnet" "subnet" {
  # Incorporating the environment into the resource name for clarity
  name                 = "${var.environment}-${var.subnet_name}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefixes
}
