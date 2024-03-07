terraform {
  backend "azurerm" {
    resource_group_name  = "DataPipelineRG"
    storage_account_name = "datapipelinestoragenvbi"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    access_key           = ""
  }
}
