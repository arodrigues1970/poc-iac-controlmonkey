resource "azurerm_private_dns_mx_record" "mx_record" {
  count               = var.record_type == "MX" ? 1 : 0
  name                = var.record_name
  zone_name           = var.zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl

  dynamic "record" {
    for_each = var.records == null ? {} : var.records
    content {
      preference = record.value.preference
      exchange   = record.value.exchange
    }
  }

  tags = var.tags_records
}