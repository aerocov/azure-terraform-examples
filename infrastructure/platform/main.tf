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

module "tf_backend" {
  source = "../modules/tf_backend"

  platform_name = var.platform_name
  platform_env  = var.platform_env
}
