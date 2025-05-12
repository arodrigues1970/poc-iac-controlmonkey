output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_guid" {
  value = azurerm_virtual_network.vnet.guid
}

output "snet_id" {
  value = {
    for key, value in azurerm_subnet.snet :
    key => value.id
  }
  description = "The subnet ID"
}

