resource "azurerm_resource_group" "xyz" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_001_name
  resource_group_name = var.resource_group_netw_name
}

data "azurerm_subnet" "snet" {
  name                 = var.subnet_001_name
  resource_group_name  = var.resource_group_netw_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
}

module "vm_linux" {
  source              = "../../../../modules/az_vm_linux"
  vm_info             = local.vm_config_001
  resource_group_name = azurerm_resource_group.xyz.name
  location            = var.location
  tags                = var.tags
}
