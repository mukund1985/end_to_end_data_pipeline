module "network" {
  source                  = "./modules/network"
  resource_group_name     = var.resource_group_name
  location                = var.location
  vnet_name               = "myVNet"        // Replace with your preferred VNet name
  vnet_address_space      = ["10.0.0.0/16"] // Replace with your desired address space
  subnet_name             = "mySubnet"      // Replace with your preferred Subnet name
  subnet_address_prefixes = ["10.0.1.0/24"] // Replace with your desired subnet prefix
}
