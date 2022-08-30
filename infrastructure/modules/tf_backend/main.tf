
locals {
  tags = {
    platform    = var.platform_name
    environment = var.platform_env
  }
}

resource "random_string" "name_suffix" {
  length  = 8
  special = false
  upper   = false
  numeric = false
}

module "tf_rg" {
  source = "../modules/resource_group"

  name     = "${var.platform_name}_${var.platform_env}_tfstate"
  location = var.location
  tags     = local.tags
}

module "tf_storage_account" {
  source = "../../modules/storage_account"

  name                     = lower("${var.platform_name}terraform${random_string.name_suffix.result}")
  resource_group_name      = module.tf_rg.name
  location                 = module.tf_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.tags
}

module "tf_storage_container" {
  source = "../modules/storage_container"

  name                  = "tfstate"
  storage_account_name  = module.tf_storage_account.name
  container_access_type = "blob"
}
