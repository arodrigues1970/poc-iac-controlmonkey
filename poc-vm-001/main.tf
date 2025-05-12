resource "azurerm_network_interface" "poc-vm-001870" {
  name                = "poc-vm-001870"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg-ne-VMs.name
  ip_configuration {
    name                          = "ipconfig1"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-networking/providers/Microsoft.Network/virtualNetworks/vnet-ne-sandbox-cm/subnets/snet-ne-dev"
  }
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:28:45"
    modifiedOnDate = "2025-05-03 15:37:45"
  }
}

resource "azurerm_managed_disk" "poc-vm-001_OsDisk_1_79fd2ad69d77442181cc4b02caa319a5" {
  name                   = "poc-vm-001_OsDisk_1_79fd2ad69d77442181cc4b02caa319a5"
  location               = var.location
  resource_group_name    = "RG-NE-VMS"
  storage_account_type   = "Premium_LRS"
  create_option          = "FromImage"
  trusted_launch_enabled = true
  image_reference_id     = "/Subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/Providers/Microsoft.Compute/Locations/northeurope/Publishers/RedHat/ArtifactTypes/VMImage/Offers/RHEL/Skus/95_gen2/Versions/9.5.2025040316"
  zone                   = 2
  hyper_v_generation     = "V2"
  os_type                = "Linux"
  tags = {
    createdByName  = "Compute Resource Provider"
    modifiedByName = "Compute Resource Provider"
    createdOnDate  = "2025-05-03 15:27:53"
    modifiedOnDate = "2025-05-03 15:38:07"
  }
}

resource "azurerm_resource_group" "rg-ne-VMs" {
  name     = "rg-ne-VMs"
  location = var.location
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:27:56"
    modifiedOnDate = "2025-05-03 15:27:56"
  }
}

resource "azurerm_virtual_network" "vnet-ne-sandbox-cm" {
  name                = "vnet-ne-sandbox-cm"
  location            = var.location
  resource_group_name = "rg-ne-networking"
  address_space       = ["172.21.4.0/22"]

  subnet {
    name = "snet-ne-dev"
    address_prefixes = [
      "172.21.4.0/25"
    ]
    default_outbound_access_enabled = false
  }
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 13:26:31"
    modifiedOnDate = "2025-05-03 13:34:50"
  }
}

resource "azurerm_network_security_group" "poc-vm-001-nsg" {
  name                = "poc-vm-001-nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg-ne-VMs.name

  security_rule = []
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:27:58"
    modifiedOnDate = "2025-05-03 15:28:06"
  }
}

resource "azurerm_virtual_machine" "poc-vm-001" {
  name                = "poc-vm-001"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg-ne-VMs.name
  identity {
    type = "SystemAssigned"
  }
  vm_size = "Standard_B2ms"

  storage_os_disk {
    name          = "poc-vm-001_OsDisk_1_79fd2ad69d77442181cc4b02caa319a5"
    create_option = "FromImage"
  }
  boot_diagnostics {
    enabled     = "true"
    storage_uri = ""
  }
  network_interface_ids = [
    azurerm_network_interface.poc-vm-001870.id
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
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:29:49"
    modifiedOnDate = "2025-05-03 15:38:21"
  }
}
