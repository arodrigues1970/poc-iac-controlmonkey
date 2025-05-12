output "nic_output" {
  value = azurerm_network_interface.anic
}

output "nic_id" {
  value = azurerm_network_interface.anic.id
}

output "nic_ip" {
  value = azurerm_network_interface.anic.private_ip_addresses
}
