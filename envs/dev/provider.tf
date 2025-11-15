terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "practice-rg-001"
    storage_account_name = "tfstatestgdev001"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f91191dd-7344-4f56-9504-6b05dc9c3eb5"
}