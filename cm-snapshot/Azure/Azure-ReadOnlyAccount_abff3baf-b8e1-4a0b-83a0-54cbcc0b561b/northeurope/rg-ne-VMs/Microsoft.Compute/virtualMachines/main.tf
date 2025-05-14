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


variable "location" {
  type    = string
  default = "northeurope"
}

variable "resource_group_name" {
  type    = string
  default = "rg-ne-VMs"
}

resource "azurerm_virtual_machine" "poc-vm-002" {
  name                = "poc-vm-002"
  location            = var.location
  resource_group_name = var.resource_group_name
  identity {
    type = "SystemAssigned"
  }
  vm_size = "Standard_B2ms"

  storage_os_disk {
    name          = "poc-vm-002_OsDisk_1_9304552d5f654e9591bca800be8d5c2f"
    create_option = "FromImage"
  }
  boot_diagnostics {
    enabled     = "true"
    storage_uri = ""
  }
  network_interface_ids = [
    "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-VMs/providers/Microsoft.Network/networkInterfaces/poc-vm-002821-199efeb2"
  ]

  lifecycle {
    ignore_changes = [additional_capabilities]
  }
  zones = ["2"]
  os_profile {
    computer_name  = "poc-vm-002"
    admin_username = "adminuser"
  }
  primary_network_interface_id = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-VMs/providers/Microsoft.Network/networkInterfaces/poc-vm-002821-199efeb2"
  os_profile_windows_config {
    enable_automatic_upgrades = true
    provision_vm_agent        = true
  }
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:43:37"
    modifiedOnDate = "2025-05-03 15:33:56"
  }
}

resource "azurerm_virtual_machine" "poc-vm-001" {
  name                = "poc-vm-001"
  location            = var.location
  resource_group_name = var.resource_group_name
  identity {
    type = "SystemAssigned"
  }
  vm_size = "Standard_B2s"

  storage_os_disk {
    name          = "poc-vm-001_OsDisk_1_79fd2ad69d77442181cc4b02caa319a5"
    create_option = "FromImage"
  }
  boot_diagnostics {
    enabled     = "true"
    storage_uri = ""
  }
  network_interface_ids = [
    "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-VMs/providers/Microsoft.Network/networkInterfaces/poc-vm-001870"
  ]

  lifecycle {
    ignore_changes = [additional_capabilities]
  }
  zones = ["2"]
  os_profile {
    computer_name  = "poc-vm-001"
    admin_username = "adminuser"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Luiz Arantes Nascimento (RE novobanco DSI)"
    createdOnDate  = "2025-05-03 15:29:49"
    modifiedOnDate = "2025-05-13 09:36:32"
  }
}
