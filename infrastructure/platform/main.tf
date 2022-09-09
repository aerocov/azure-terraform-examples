terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.19.1"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~> 0.5.0"
    }
  }
}


provider "azurerm" {
  features {}
}

provider "random" {}


module "main_rg" {
  source = "../modules/resource_group"

  name     = "hoss_paltform"
  location = "Australia Southeast"
}
