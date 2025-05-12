output "dsc_primary_access_key" {
  description = " The Primary Access Key for the DSC Endpoint associated with this Automation Account."
  value       = azurerm_automation_account.account.dsc_primary_access_key
}

output "dsc_secondary_access_key" {
  description = "The Secondary Access Key for the DSC Endpoint associated with this Automation Account."
  value       = azurerm_automation_account.account.dsc_secondary_access_key
}

output "dsc_server_endpoint" {
  description = "The DSC Server Endpoint associated with this Automation Account."
  value       = azurerm_automation_account.account.dsc_server_endpoint
}

output "automation_id" {
  description = "The Automation Account ID."
  value       = azurerm_automation_account.account.id
}

output "thumbprint" {
  description = "The thumbprint for the certificate."
  value       = var.cert_name == null ? [] : azurerm_automation_certificate.certificate.*.thumbprint
}

output "azurerm_automation_certificate_id" {
  description = "The Automation Certificate ID."
  value       = var.cert_name == null ? [] : azurerm_automation_certificate.certificate.*.id
}
