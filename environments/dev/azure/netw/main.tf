resource "azurerm_resource_group" "xyznetw" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_virtual_network" "vnet" {
  address_space       = var.vnet_001_address_space
  dns_servers         = var.vnet_001_dns_servers
  location            = var.location
  name                = var.vnet_001_name
  resource_group_name = azurerm_resource_group.hubnetw.name
  tags                = var.tags
}

resource "azurerm_subnet" "snet" {
  for_each                                       = local.subnet_list
  name                                           = each.value.name
  resource_group_name                            = azurerm_resource_group.hubnetw.name
  virtual_network_name                           = azurerm_virtual_network.vnet.name
  address_prefixes                               = each.value.address_prefixes
  enforce_private_link_endpoint_network_policies = each.value.enforce_private_link_endpoint_network_policies
}

module "nsg" {
  for_each            = local.nsg_list
  source              = "../../../../modules/az_network_nsg"
  name                = each.value.name
  nsg_rules           = each.value.rules
  resource_group_name = azurerm_resource_group.hubnetw.name
  location            = var.location
  subnet_id           = each.value.subnet_id
  tags                = var.tags
}

module "private_dns_zone" {
  for_each                 = { for private_dns_zone in local.private_dns_zone_list : private_dns_zone.name => private_dns_zone }
  source                   = "../../../../modules/az_private_dns_zone"
  name                     = each.value.name
  resource_group_name      = azurerm_resource_group.hubnetw.name
  soa_record               = each.value.soa_record
  private_dns_records_list = each.value.private_dns_records_list
  tags                     = var.tags
}
