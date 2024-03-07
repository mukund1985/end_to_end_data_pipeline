terraform {
  backend "azurerm" {
    resource_group_name  = "DataPipelineRG"
    storage_account_name = "datapipelinestoragenvbi"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    access_key           = "4Rl8/P6XnDhdODdDmgVXcjnFJRP5Pi/U7HkZeisHBkxqlO1VwxDykpcKf52KR57o5r9OAyeuNXv9+AStXH0MHw=="
  }
}
