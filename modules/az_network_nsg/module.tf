resource "azurerm_network_security_group" "nsg_obj" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "nsg_rules" {
  for_each                                   = { for nsg_rules in var.nsg_rules : nsg_rules.name => nsg_rules }
  source                                     = "../az_network_nsg_rules"
  name                                       = each.value.name
  description                                = try(each.value.description, null)
  resource_group_name                        = var.resource_group_name
  nsg_name                                   = azurerm_network_security_group.nsg_obj.name
  priority                                   = each.value.priority
  direction                                  = each.value.direction
  access                                     = each.value.access
  protocol                                   = each.value.protocol
  source_port_range                          = each.value.source_port_range
  destination_port_range                     = each.value.destination_port_range
  source_address_prefix                      = each.value.source_address_prefix
  destination_address_prefix                 = each.value.destination_address_prefix
  source_port_ranges                         = try(each.value.source_port_ranges, null)
  destination_port_ranges                    = try(each.value.destination_port_ranges, null)
  source_application_security_group_ids      = try(each.value.source_application_security_group_ids, null)
  destination_application_security_group_ids = try(each.value.destination_application_security_group_ids, null)
  source_address_prefixes                    = try(each.value.source_address_prefixes, null)
  destination_address_prefixes               = try(each.value.destination_address_prefixes, null)
}

resource "azurerm_subnet_network_security_group_association" "nsg_subnet" {
  count                     = length(var.subnet_id)
  subnet_id                 = var.subnet_id[count.index]
  network_security_group_id = azurerm_network_security_group.nsg_obj.id
}
