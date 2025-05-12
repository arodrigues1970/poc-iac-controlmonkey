resource "azurerm_managed_disk" "amd" {
  name                 = var.name
  resource_group_name  = var.resource_group_name
  location             = var.location
  create_option        = var.create_option
  storage_account_type = var.storage_account_type
  disk_size_gb         = var.disk_size_gb
  zone                 = var.zone
  disk_iops_read_write = var.disk_iops_read_write
  tags                 = var.tags

  lifecycle {
    ignore_changes = [
      disk_encryption_set_id
    ]
  }
}

resource "azurerm_virtual_machine_data_disk_attachment" "adattach" {
  count              = coalesce(var.vm_id, 0) == 0 ? 0 : 1
  managed_disk_id    = azurerm_managed_disk.amd.id
  virtual_machine_id = var.vm_id
  caching            = var.caching
  lun                = var.lun
}
