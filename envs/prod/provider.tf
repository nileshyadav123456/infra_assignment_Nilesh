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
  subscription_id = ""
}

# Backend remote state storage  
terraform {
   backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstatestoreprod"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }

}
