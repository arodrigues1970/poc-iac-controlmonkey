resource "azurerm_dns_ns_record" "ns_record" {
  count               = var.record_type == "NS" ? 1 : 0
  name                = var.record_name
  zone_name           = var.zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl

  records = var.records

  tags = var.tags_records
}