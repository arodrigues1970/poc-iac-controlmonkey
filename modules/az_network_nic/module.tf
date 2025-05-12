resource "azurerm_network_interface" "anic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags

  ip_configuration {
    name                          = var.ip_config_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.ip_allocation
    private_ip_address            = var.private_ip_address
  }
}
