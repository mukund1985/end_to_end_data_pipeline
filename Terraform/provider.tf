# Define the required Terraform version and provider versions for the AzureRM and Random providers
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0" # Ensure compatibility with your configurations
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  required_version = ">= 0.12"
}

# Configure the AzureRM provider without specifying specific features, relying on defaults
provider "azurerm" {
  features {}
}
