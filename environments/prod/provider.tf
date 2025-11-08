terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-pranav"
    storage_account_name = "tfstatpranav98877665"
    container_name       = "tfstates"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "2c4130d9-0278-4b5a-8dbf-feaf20816e08"
}
