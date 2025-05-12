output "rsv_id" {
  description = "The ID of the Recovery Services Vault"
  value       = azurerm_recovery_services_vault.rsv.id
}

output "policy_id" {
  description = "The ID of the Policy"
  value = tomap({
    for key, value in azurerm_backup_policy_vm.policy_vm : key => value.id
  })
}
