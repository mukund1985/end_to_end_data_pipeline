terraform {
  backend "azurerm" {
    resource_group_name  = "DataPipelineRG"
    storage_account_name = "datapipelinestoragezbkj"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    access_key           = ""
  }
}
