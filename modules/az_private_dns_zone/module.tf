resource "azurerm_private_dns_zone" "private_dns" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "soa_record" {
    for_each = var.soa_record
    content {
      email        = soa_record.value.email
      expire_time  = soa_record.value.expire_time
      minimum_ttl  = soa_record.value.minimum_ttl
      refresh_time = soa_record.value.refresh_time
      retry_time   = soa_record.value.retry_time
      ttl          = soa_record.value.ttl
      tags         = soa_record.value.tags
    }
  }
}

module "private_dns_records" {
  for_each            = { for private_dns_records in var.private_dns_records_list : private_dns_records.record_name => private_dns_records }
  source              = "../az_private_dns_records"
  record_type         = each.value.record_type
  record_name         = each.value.record_name
  zone_name           = azurerm_private_dns_zone.private_dns.name
  resource_group_name = azurerm_private_dns_zone.private_dns.resource_group_name
  ttl                 = each.value.ttl
  records             = each.value.records
  tags_records        = var.tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "vnet" {
  for_each              = { for vnet_link in var.vnet_link_list : vnet_link.name => vnet_link }
  name                  = each.value.name
  resource_group_name   = azurerm_private_dns_zone.private_dns.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.private_dns.name
  virtual_network_id    = each.value.vnet_id
}
