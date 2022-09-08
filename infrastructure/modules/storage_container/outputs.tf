output "name" {
  description = "Specifies the name of the storage container."
  value       = azurerm_storage_container.storage_container.name
}

output "id" {
  description = "Specifies the resource id of the storage container."
  value       = azurerm_storage_container.storage_container.id
}
