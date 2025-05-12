module "disk_obj" {
  for_each = { for disks_list in var.vm_info.disks_list : disks_list.name => disks_list }
  source   = "../az_managed_disk"

  name                 = each.value.name
  caching              = each.value.caching
  create_option        = each.value.create_option
  disk_iops_read_write = each.value.disk_iops_read_write
  disk_size_gb         = each.value.disk_size_gb
  lun                  = each.value.lun
  storage_account_type = each.value.storage_account_type
  zones                = each.value.zones
  location             = var.location
  resource_group_name  = var.resource_group_name
  tags                 = var.tags
  vm_id                = azurerm_windows_virtual_machine.avm.id

  depends_on = [
    azurerm_windows_virtual_machine.avm
  ]
}
