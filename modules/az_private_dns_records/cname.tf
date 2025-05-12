resource "azurerm_private_dns_cname_record" "cname_record" {
  count               = var.record_type == "CNAME" ? 1 : 0
  name                = var.record_name
  zone_name           = var.zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl

  record = var.records

  tags = var.tags_records
}