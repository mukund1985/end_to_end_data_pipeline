resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = "${var.storage_account_prefix}${random_string.sa_suffix.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sc" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "random_string" "sa_suffix" {
  length  = 4
  special = false
  upper   = false
  numeric = false
}

module "security" {
  source                      = "./modules/security"
  key_vault_name              = var.key_vault_name
  location                    = var.location
  resource_group_name         = azurerm_resource_group.rg.name
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku_name
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  network_acls_default_action = var.network_acls_default_action
  network_acls_bypass         = var.network_acls_bypass
}

module "network" {
  source                  = "./modules/network"
  environment             = var.environment
  vnet_name               = var.vnet_name
  vnet_address_space      = var.vnet_address_space
  location                = var.location
  resource_group_name     = var.resource_group_name
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}

module "data_factory" {
  source                            = "./modules/data_factory"
  environment                       = var.environment
  location                          = var.location
  resource_group_name               = azurerm_resource_group.rg.name
  storage_account_connection_string = var.storage_account_connection_string
}


module "data_lake" {
  source              = "./modules/data_lake"
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

module "synapse" {
  source                       = "./modules/synapse"
  environment                  = var.environment
  location                     = var.location
  resource_group_name          = azurerm_resource_group.rg.name
  sql_admin_password           = var.sql_admin_password
  data_lake_gen2_filesystem_id = module.data_lake.data_lake_gen2_filesystem_id
  sql_admin_login              = var.sql_admin_login
}


