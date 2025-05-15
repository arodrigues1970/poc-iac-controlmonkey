resource "azurerm_resource_group" "xyz" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_001_name
  location            = azurerm_resource_group.xyz.location
  resource_group_name = azurerm_resource_group.xyz.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_001_name
  resource_group_name  = azurerm_resource_group.xyz.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_public_ip" "publicip" {
  name                = "pip-ne-xyz"
  resource_group_name = azurerm_resource_group.xyz.name
  location            = azurerm_resource_group.xyz.location
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = var.tags
}

resource "azurerm_network_interface" "nic" {
  name                = "azlxyzdev001-nic"
  location            = azurerm_resource_group.xyz.location
  resource_group_name = azurerm_resource_group.xyz.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.publicip.id
  }
}

resource "azurerm_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = azurerm_resource_group.xyz.location
  resource_group_name   = azurerm_resource_group.xyz.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_D2_v4"

  storage_os_disk {
    name              = "azlxyzdev001-OSDisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "azlxyzdev001"
    admin_username = "linuxuser"
    admin_password = "Passw0rd!2025#"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}
