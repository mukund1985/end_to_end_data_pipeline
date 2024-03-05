terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.46" # Uncomment and specify the version as needed
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0" # Uncomment and specify the version as needed
    }
  }
  required_version = ">= 0.12"
}

provider "azurerm" {
  features {}
  subscription_id = var.arm_subscription_id
  client_id       = var.arm_client_id
  client_secret   = var.arm_client_secret
  tenant_id       = var.arm_tenant_id
}
