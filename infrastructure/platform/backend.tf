terraform {
  backend "azurerm" {
    resource_group_name  = "hoss_dev_tfstate"
    storage_account_name = "hossterraformabbtlmzr"
    container_name       = "tfstate"
    key                  = "some_app"
  }
}
