resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
  tags     = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

