terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "tfstate-rg"
    storage_account_name = "tfstorageaccaks"
    container_name = "tfstate"
    key = "infra.tfstate"
    
  }
}

provider "azurerm" {
  features {}
}