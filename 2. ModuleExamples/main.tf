terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

module "ResouceGroup" {
  source = "./ResourceGroup"
  base_name = "TerraformExample01"
  location = "Canada Central"
}

module "StorageAccount" {
  source = "./StorageAccount"
  base_name = "TerrafromExample01"
  resource_group_name = module.ResouceGroup.rg_name_out
  location = "Canada Central"
}