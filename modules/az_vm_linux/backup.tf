resource "azurerm_backup_protected_vm" "backup" {
  count               = var.enable_policy ? 1 : 0
  resource_group_name = var.resource_group_name
  recovery_vault_name = var.rsv_name
  source_vm_id        = azurerm_linux_virtual_machine.avm.id
  backup_policy_id    = var.policy_id

  depends_on = [
    azurerm_linux_virtual_machine.avm,
    module.disk_obj,
    module.nic_obj,
  ]
}
