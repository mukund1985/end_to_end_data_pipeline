# Resource Group Configuration
# Defines the main resource group under which all resources will be provisioned.
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name # Resource group name from variable
  location = var.location            # Deployment location from variable
}

# Storage Account Configuration
# Creates a storage account with a unique name by appending a random string.
resource "azurerm_storage_account" "sa" {
  name                     = "${var.storage_account_prefix}${random_string.sa_suffix.result}" # Unique storage account name
  resource_group_name      = azurerm_resource_group.rg.name                                   # Uses the resource group defined above
  location                 = azurerm_resource_group.rg.location                               # Inherits location from the resource group
  account_tier             = "Standard"                                                       # Standard performance tier
  account_replication_type = "LRS"                                                            # Locally-redundant storage replication
}

# Storage Container Configuration
# Creates a private container within the storage account for sensitive data.
resource "azurerm_storage_container" "sc" {
  name                  = var.container_name              # Container name from variable
  storage_account_name  = azurerm_storage_account.sa.name # References the storage account created above
  container_access_type = "private"                       # Access type set to private for security
}

# Random String Resource
# Generates a random string to ensure the storage account name uniqueness.
resource "random_string" "sa_suffix" {
  length  = 4     # Length of the random string
  special = false # Excludes special characters for compatibility
  upper   = false # Lowercase letters for consistency
  numeric = false # Excludes numbers, purely alphabetical
}

# Security Module Integration
# Incorporates the security module for Azure Key Vault provisioning with detailed configurations.
module "security" {
  source                      = "./modules/security"            # Path to the security module
  key_vault_name              = var.key_vault_name              # Key Vault name from variable
  location                    = var.location                    # Deployment location from variable
  resource_group_name         = azurerm_resource_group.rg.name  # Resource group name
  tenant_id                   = var.tenant_id                   # Azure AD tenant ID from variable
  sku_name                    = var.sku_name                    # SKU name (standard/premium) from variable
  soft_delete_retention_days  = var.soft_delete_retention_days  # Retention days for deleted items
  purge_protection_enabled    = var.purge_protection_enabled    # Enables/disables purge protection
  network_acls_default_action = var.network_acls_default_action # Network ACLs default action
  network_acls_bypass         = var.network_acls_bypass         # Configures network ACLs bypass options
}

# Network Module Integration
module "network" {
  source                  = "./modules/network"
  environment             = var.environment # Ensure you have declared this variable or replace it with a concrete value
  vnet_name               = var.vnet_name
  vnet_address_space      = var.vnet_address_space
  location                = var.location
  resource_group_name     = var.resource_group_name
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}

# Data Factory Module Integration
module "data_factory" {
  source              = "./modules/data_factory"
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}