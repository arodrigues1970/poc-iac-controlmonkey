resource "azurerm_virtual_machine_extension" "vmext" {
  count                = var.script_file == null ? 0 : 1
  name                 = "${azurerm_linux_virtual_machine.avm.name}-vmext"
  virtual_machine_id   = azurerm_linux_virtual_machine.avm.id
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"

  protected_settings = <<PROT
    {
        "script": "${base64encode(file(var.script_file))}"
    }
    PROT

  timeouts {
    create = "4h"
    update = "4h"
    delete = "4h"
  }

  lifecycle {
    ignore_changes = all
  }

  depends_on = [
    module.disk_obj
  ]
}
