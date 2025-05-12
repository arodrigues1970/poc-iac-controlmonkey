resource "azurerm_windows_virtual_machine" "avm" {
  name                     = var.vm_info.name
  computer_name            = var.vm_info.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  size                     = var.vm_info.size
  network_interface_ids    = [for k, v in module.nic_obj : v.nic_output.id]
  zone                     = var.vm_info.zone
  admin_password           = var.vm_info.password
  admin_username           = var.vm_info.username
  enable_automatic_updates = false
  patch_mode               = "Manual"

  os_disk {
    caching                   = var.vm_info.os_disk.caching
    storage_account_type      = var.vm_info.os_disk.storage_account_type
    disk_encryption_set_id    = var.vm_info.os_disk.disk_encryption_set_id
    disk_size_gb              = var.vm_info.os_disk.disk_size_gb
    write_accelerator_enabled = var.vm_info.os_disk.write_accelerator_enabled
    name                      = var.vm_info.os_disk.name
  }

  source_image_reference {
    publisher = var.vm_info.image.publisher
    offer     = var.vm_info.image.offer
    sku       = var.vm_info.image.sku
    version   = var.vm_info.image.version
  }

  identity {
    type         = var.vm_info.manage_identity_info.type
    identity_ids = var.vm_info.manage_identity_info.identity_ids
  }

  dynamic "additional_capabilities" {
    for_each = var.vm_info.additional_capabilities
    content {
      ultra_ssd_enabled = var.vm_info.additional_capabilities.ultra_ssd_enabled
    }
  }

  dynamic "boot_diagnostics" {
    for_each = var.vm_info.boot_diagnostics.storage_account_uri == 0 ? {} : var.vm_info.boot_diagnostics
    content {
      storage_account_uri = var.vm_info.boot_diagnostics.storage_account_uri
    }
  }

  tags = var.tags

  depends_on = [
    module.nic_obj
  ]

  lifecycle {
    ignore_changes = [
      enable_automatic_updates,
      patch_mode
    ]
  }
}
