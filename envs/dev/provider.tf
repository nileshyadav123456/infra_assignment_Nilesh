terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "practice-rg-001"
    storage_account_name = "tfstatestgnil001"
    container_name       = "nilcontainer"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "22135bdc-d3fd-4095-9a18-2094dab79b13"
}
