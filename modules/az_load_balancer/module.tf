resource "azurerm_lb" "lb" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  tags                = var.tags

  dynamic "frontend_ip_configuration" {
    for_each = var.frontend_ip_configuration
    content {
      name                          = frontend_ip_configuration.value["name"]
      private_ip_address            = frontend_ip_configuration.value["private_ip_address"]
      private_ip_address_allocation = frontend_ip_configuration.value["private_ip_address_allocation"]
      private_ip_address_version    = frontend_ip_configuration.value["private_ip_address_version"]
      public_ip_address_id          = frontend_ip_configuration.value["public_ip_address_id"]
      public_ip_prefix_id           = frontend_ip_configuration.value["public_ip_prefix_id"]
      subnet_id                     = frontend_ip_configuration.value["subnet_id"]
      zones                         = frontend_ip_configuration.value["zones"]
    }
  }
}
