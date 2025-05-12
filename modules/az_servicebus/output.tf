output "default_primary_connection_string" {
  description = "The primary connection string for the authorization rule RootManageSharedAccessKey"
  value       = azurerm_servicebus_namespace.namespace.default_primary_connection_string
  sensitive   = true
}

output "default_primary_key" {
  description = "The primary access key for the authorization rule RootManageSharedAccessKey"
  value       = azurerm_servicebus_namespace.namespace.default_primary_key
  sensitive   = true
}

output "default_secondary_connection_string" {
  description = "The secondary connection string for the authorization rule RootManageSharedAccessKey"
  value       = azurerm_servicebus_namespace.namespace.default_secondary_connection_string
  sensitive   = true
}

output "default_secondary_key" {
  description = "The secondary access key for the authorization rule RootManageSharedAccessKey"
  value       = azurerm_servicebus_namespace.namespace.default_secondary_key
  sensitive   = true
}

output "id" {
  description = "The ServiceBus Namespace ID"
  value       = azurerm_servicebus_namespace.namespace.id
}
