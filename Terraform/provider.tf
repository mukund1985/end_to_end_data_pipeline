terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      // Remove the version constraint to always use the latest version
    }
  }
  // It's a good idea to keep the required Terraform version explicit to avoid surprises with major Terraform updates
  required_version = ">= 0.12"
}

provider "azurerm" {
  features {}
}
