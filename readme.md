# Basic Implementation of Terraform modules in Azure Cloud.

## Module 1: Resource Group
- This module creates a resource group in Azure.
- It takes the following inputs:
  - `rg_name`: The name of the resource group.
  - `location`: The location where the resource group will be created.
- It outputs the following:
  - `rg_name`: The name of the resource group.
  - `location`: The location of the resource group.

  
## Module 1: Storage Account
- This module creates a storage account in the preivous RG.
- It takes the following inputs:
  - `rg_name`: The name of the resource group where the storage account will be created.
  - `location`: The location where the storage account will be created.

## Final Output
- Final out put is the names of the created Resource Groups and Storage Accounts.

## How to Run this:
1. Environment Setup:
    - Install Azure CLI and Terraform on your local machine.
    - Set up your Azure credentials using the Azure CLI
    - Create a Service Princple to created resources from Terraform.
    - For details refer to the [Azure CLI documentation](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).

2. Create Resoruces:
    - terraform init > terraform plan > terraform apply
    - terraform output: return the values of crated resource groups and storage accounts.
3 . Clean up: 
    - terraform destroy: This command will destroy all the resources created by Terraform.

## Key consideration:
- Storage Accoutn name should be unique across all Azure accounts. For this we used another Terraform Provider called `random` to generate a random string of 10 characters.