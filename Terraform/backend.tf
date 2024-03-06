terraform {
  backend "azurerm" {
    resource_group_name  = "DataPipelineRG"
    storage_account_name = "datapipelinestoragetsyf"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
