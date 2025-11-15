terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f91191dd-7344-4f56-9504-6b05dc9c3eb5"
}

# Backend remote state storage  
terraform {
  backend "azurerm" {
    resource_group_name  = "practice-rg-001"
    storage_account_name = "tfstatestgprod001"
    key                  = "prod.terraform.tfstate"
  }
}

