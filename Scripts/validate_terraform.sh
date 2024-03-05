#!/bin/bash

# Navigate to the Terraform directory
cd /Users/mukundpandey/git_repo/end_to_end_data_pipeline/Terraform || exit 1

# Initialize Terraform (if needed, and without backend initialization)
terraform init -backend=false

# Validate the Terraform configuration
terraform validate

# Return to the original directory if needed
# cd -
