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

resource "azurerm_network_interface" "poc-vm-001870" {
  name                = "poc-vm-001870"
  location            = var.location
  resource_group_name = var.resource_group_name
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

resource "azurerm_network_interface" "poc-vm-002821-199efeb2" {
  name                = "poc-vm-002821-199efeb2"
  location            = var.location
  resource_group_name = var.resource_group_name
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
