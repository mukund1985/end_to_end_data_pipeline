terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.46" # Or any other version that you want to use
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0" # Or any other version that you want to use
    }
  }
  required_version = ">= 0.12"
}

provider "azurerm" {
  features {} # The features block is empty, which is fine
}
