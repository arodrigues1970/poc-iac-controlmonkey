terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}

resource "azurerm_virtual_machine" "poc-vm-003" {
  name                = "poc-vm-003"
  location            = "northeurope"
  resource_group_name = "rg-ne-proj01"
  identity {
    type = "SystemAssigned"
  }
  vm_size = "Standard_B2ms"

  storage_os_disk {
    name          = "poc-vm-003_OsDisk_1_1751243476c9434486d071846e3ed457"
    create_option = "FromImage"
  }
  boot_diagnostics {
    enabled     = "true"
    storage_uri = ""
  }
  network_interface_ids = [
    "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-proj01/providers/Microsoft.Network/networkInterfaces/poc-vm-003293-df20acd0"
  ]

  lifecycle {
    ignore_changes = [additional_capabilities]
  }
  zones = ["2"]
  os_profile {
    computer_name  = "poc-vm-003"
    admin_username = "adminuser"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  primary_network_interface_id = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-proj01/providers/Microsoft.Network/networkInterfaces/poc-vm-003293-df20acd0"
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:56:15"
    modifiedOnDate = "2025-05-03 16:05:15"
  }
}
