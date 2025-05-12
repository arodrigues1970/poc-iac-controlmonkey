output "storage_account_id" {
  value       = azurerm_storage_account.storage.id
  description = "The ID of the Storage Account"
  depends_on  = [azurerm_storage_account.storage]
}

output "storage_account_primary_key" {
  value       = azurerm_storage_account.storage.primary_access_key
  description = "The primary access key for the storage account"
  sensitive   = true
  depends_on  = [azurerm_storage_account.storage]
}

output "storage_account_primary_blob_endpoint" {
  value       = azurerm_storage_account.storage.primary_blob_endpoint
  description = "The primary blob endpoint for the storage account"
  sensitive   = true
  depends_on  = [azurerm_storage_account.storage]
}

output "storage_account_primary_connection_string" {
  value       = azurerm_storage_account.storage.primary_connection_string
  description = "The connection string associated with the primary location."
  depends_on  = [azurerm_storage_account.storage]
  sensitive   = true
}

output "storage_account_primary_web_endpoint" {
  value       = azurerm_storage_account.storage.primary_web_endpoint
  description = "The endpoint URL for web storage in the primary location."
  depends_on  = [azurerm_storage_account.storage]
  sensitive   = false
}

output "storage_account_primary_web_host" {
  value       = azurerm_storage_account.storage.primary_web_host
  description = "The hostname with port if applicable for web storage in the primary location."
  depends_on  = [azurerm_storage_account.storage]
  sensitive   = false
}

output "container_resource_manager_id" {
  value = var.container_list == {} ? null : {
    for key, value in azurerm_storage_container.container :
    key => value.resource_manager_id
  }
  description = "The Resource Manager ID of this Storage Container"
}
