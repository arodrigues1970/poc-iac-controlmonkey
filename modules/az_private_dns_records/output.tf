output "txt_record_id" {
  description = "The Private DNS TXT Record ID."
  value       = var.record_type == "TXT" ? azurerm_private_dns_txt_record.txt_record.0.id : null
}

output "txt_record_fqdn" {
  description = "The FQDN of the DNS TXT Record"
  value       = var.record_type == "TXT" ? azurerm_private_dns_txt_record.txt_record.0.fqdn : null
}

output "srv_record_id" {
  description = "The Private DNS SRV Record ID."
  value       = var.record_type == "SRV" ? azurerm_private_dns_srv_record.srv_record.0.id : null
}

output "srv_record_fqdn" {
  description = "The FQDN of the DNS SRV Record"
  value       = var.record_type == "SRV" ? azurerm_private_dns_srv_record.srv_record.0.fqdn : null
}

output "ptr_record_id" {
  description = "The Private DNS PTR Record ID."
  value       = var.record_type == "PTR" ? azurerm_private_dns_ptr_record.ptr_record.0.id : null
}

output "ptr_record_fqdn" {
  description = "The FQDN of the DNS PTR Record"
  value       = var.record_type == "PTR" ? azurerm_private_dns_ptr_record.ptr_record.0.fqdn : null
}

output "ns_record_id" {
  description = "The DNS NS Record ID."
  value       = var.record_type == "NS" ? azurerm_dns_ns_record.ns_record.0.id : null
}

output "ns_record_fqdn" {
  description = "The FQDN of the DNS NS Record"
  value       = var.record_type == "NS" ? azurerm_dns_ns_record.ns_record.0.fqdn : null
}

output "mx_record_id" {
  description = "The Private DNS MX Record ID."
  value       = var.record_type == "MX" ? azurerm_private_dns_mx_record.mx_record.0.id : null
}

output "mx_record_fqdn" {
  description = "The FQDN of the DNS MX Record"
  value       = var.record_type == "MX" ? azurerm_private_dns_mx_record.mx_record.0.fqdn : null
}

output "cname_record_id" {
  description = "The Private DNS CNAME Record ID."
  value       = var.record_type == "CNAME" ? azurerm_private_dns_cname_record.cname_record.0.id : null
}

output "cname_record_fqdn" {
  description = "The FQDN of the DNS CNAME Record"
  value       = var.record_type == "CNAME" ? azurerm_private_dns_cname_record.cname_record.0.fqdn : null
}

output "aaaa_record_id" {
  description = "The Private DNS AAAA Record ID."
  value       = var.record_type == "AAAA" ? azurerm_private_dns_aaaa_record.a_record.0.id : null
}

output "aaaa_record_fqdn" {
  description = "The FQDN of the DNS AAAA Record"
  value       = var.record_type == "AAAA" ? azurerm_private_dns_aaaa_record.a_record.0.fqdn : null
}

output "a_record_id" {
  description = "The Private DNS A Record ID."
  value       = var.record_type == "A" ? azurerm_private_dns_a_record.a_record.0.id : null
}

output "a_record_fqdn" {
  description = "The FQDN of the DNS A Record"
  value       = var.record_type == "A" ? azurerm_private_dns_a_record.a_record.0.fqdn : null
}
