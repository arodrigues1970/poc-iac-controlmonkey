resource "azurerm_servicebus_namespace" "namespace" {
  capacity            = var.capacity
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  tags                = var.tags
  zone_redundant      = var.zone_redundant
}
