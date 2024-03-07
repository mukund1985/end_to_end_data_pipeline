#!/bin/bash

RESOURCE_GROUP_NAME="$1"
STORAGE_ACCOUNT_NAME="$2"
CONTAINER_NAME="$3"
ACCESS_KEY="$4"

cat <<EOF >../Terraform/backend.tf
terraform {
  backend "azurerm" {
    resource_group_name  = "$RESOURCE_GROUP_NAME"
    storage_account_name = "$STORAGE_ACCOUNT_NAME"
    container_name       = "$CONTAINER_NAME"
    key                  = "terraform.tfstate"
    access_key           = "$ACCESS_KEY"
  }
}
EOF
