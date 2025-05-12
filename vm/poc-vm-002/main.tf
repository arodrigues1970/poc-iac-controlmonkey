resource "azurerm_virtual_machine" "poc-vm-002" {
  name                = "poc-vm-002"
  location            = var.location
  resource_group_name = "rg-ne-VMs"
  identity {
    type = "SystemAssigned"
  }
  vm_size = "Standard_B8ms"

  storage_os_disk {
    name          = "poc-vm-002_OsDisk_1_9304552d5f654e9591bca800be8d5c2f"
    create_option = "FromImage"
  }
  boot_diagnostics {
    enabled     = "true"
    storage_uri = ""
  }
  network_interface_ids = [
    azurerm_network_interface.poc-vm-002821-199efeb2.id
  ]

  lifecycle {
    ignore_changes = [additional_capabilities]
  }
  zones = ["2"]
  os_profile {
    computer_name  = "poc-vm-002"
    admin_username = "adminuser"
  }
  primary_network_interface_id = azurerm_network_interface.poc-vm-002821-199efeb2.id
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

resource "azurerm_managed_disk" "poc-vm-002_OsDisk_1_9304552d5f654e9591bca800be8d5c2f" {
  name                   = "poc-vm-002_OsDisk_1_9304552d5f654e9591bca800be8d5c2f"
  location               = var.location
  resource_group_name    = "RG-NE-VMS"
  storage_account_type   = "Premium_LRS"
  create_option          = "FromImage"
  trusted_launch_enabled = true
  image_reference_id     = "/Subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/Providers/Microsoft.Compute/Locations/northeurope/Publishers/MicrosoftWindowsServer/ArtifactTypes/VMImage/Offers/WindowsServer/Skus/2022-datacenter-azure-edition-hotpatch/Versions/20348.3562.250404"
  zone                   = 2
  hyper_v_generation     = "V2"
  os_type                = "Windows"
  tags = {
    createdByName  = "Compute Resource Provider"
    modifiedByName = "Compute Resource Provider"
    createdOnDate  = "2025-05-03 15:44:04"
    modifiedOnDate = "2025-05-03 15:34:25"
  }
}

resource "azurerm_network_interface" "poc-vm-002821-199efeb2" {
  name                = "poc-vm-002821-199efeb2"
  location            = var.location
  resource_group_name = "rg-ne-VMs"
  ip_configuration {
    name                          = "poc-vm-002821-defaultIpConfiguration"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-networking/providers/Microsoft.Network/virtualNetworks/vnet-ne-sandbox-cm/subnets/snet-ne-dev"
  }
  tags = {
    createdByName  = "Azure Traffic Manager and DNS"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:43:53"
    modifiedOnDate = "2025-05-05 09:09:24"
  }
}
