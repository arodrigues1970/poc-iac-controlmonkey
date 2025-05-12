resource "azurerm_network_security_rule" "nsg_rule_obj" {
  name                                       = var.name
  resource_group_name                        = var.resource_group_name
  network_security_group_name                = var.nsg_name
  priority                                   = var.priority
  description                                = var.description
  direction                                  = var.direction
  access                                     = var.access
  protocol                                   = var.protocol
  source_port_range                          = var.source_port_range
  destination_port_range                     = var.destination_port_range
  source_address_prefix                      = var.source_address_prefix
  destination_address_prefix                 = var.destination_address_prefix
  source_port_ranges                         = var.source_port_ranges
  destination_port_ranges                    = var.destination_port_ranges
  source_application_security_group_ids      = var.source_application_security_group_ids
  destination_application_security_group_ids = var.destination_application_security_group_ids
  source_address_prefixes                    = var.source_address_prefixes
  destination_address_prefixes               = var.destination_address_prefixes
}
