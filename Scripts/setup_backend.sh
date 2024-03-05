#!/bin/bash

# Usage: ./setup_backend.sh <RESOURCE_GROUP_NAME> <STORAGE_ACCOUNT_NAME> <CONTAINER_NAME> <ACCESS_KEY>

RESOURCE_GROUP_NAME="$1"
STORAGE_ACCOUNT_NAME="$2"
CONTAINER_NAME="$3"
ACCESS_KEY="$4"

# Creating a backend.tf file with the storage account details
cat <<EOF >../Terraform/backend.tf
terraform {
  backend "azurerm" {
    resource_group_name  = "${RESOURCE_GROUP_NAME}"
    storage_account_name = "${STORAGE_ACCOUNT_NAME}"
    container_name       = "${CONTAINER_NAME}"
    key                  = "prod.terraform.tfstate"
    access_key           = "${ACCESS_KEY}"
  }
}
EOF
