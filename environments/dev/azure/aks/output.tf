output "vnet_id" {
  value       = data.azurerm_virtual_network.netw.id
  description = "The VNet ID"
}

output "vnet_guid" {
  value       = data.azurerm_virtual_network.netw.guid
  description = "The VNet GUID"
}

output "snet_id" {
  value = {
    for key, value in data.azurerm_subnet.snet :
    key => value.id
  }
  description = "The subnet ID"
}
