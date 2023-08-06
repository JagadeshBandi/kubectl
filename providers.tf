terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "jagadesh"
    storage_account_name = "jagadesh123"
    container_name       = "tfstate"
    key                  = "aksstate"
  }
}

provider "azurerm" {
  features {}
}
