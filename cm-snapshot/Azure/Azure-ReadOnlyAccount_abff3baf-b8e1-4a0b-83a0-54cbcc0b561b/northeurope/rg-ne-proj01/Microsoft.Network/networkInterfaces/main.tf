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
  default = "rg-ne-proj01"
}

resource "azurerm_network_interface" "pep-kv-ne-proj01-nic" {
  name                = "pep-kv-ne-proj01-nic"
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
    name                          = "privateEndpointIpConfig.96b96417-e27b-469f-850f-91220cdfbafb"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-networking/providers/Microsoft.Network/virtualNetworks/vnet-ne-sandbox-cm/subnets/snet-ne-dev"
  }
  tags = {
    createdByName  = "Azure Traffic Manager and DNS"
    modifiedByName = "Azure Traffic Manager and DNS"
    createdOnDate  = "2025-05-03 16:22:27"
    modifiedOnDate = "2025-05-03 16:31:30"
  }
}

resource "azurerm_network_interface" "pep-stxyzcmpoc001-nic" {
  name                = "pep-stxyzcmpoc001-nic"
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
    name                          = "privateEndpointIpConfig.7353a6a4-d9cf-4308-8b4b-13f3d023c25d"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-networking/providers/Microsoft.Network/virtualNetworks/vnet-ne-sandbox-cm/subnets/snet-ne-dev"
  }
  tags = {
    createdByName  = "Azure Traffic Manager and DNS"
    modifiedByName = "Azure Traffic Manager and DNS"
    createdOnDate  = "2025-05-03 16:22:56"
    modifiedOnDate = "2025-05-03 16:32:54"
  }
}

resource "azurerm_network_interface" "poc-vm-003293-df20acd0" {
  name                = "poc-vm-003293-df20acd0"
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
    name                          = "poc-vm-003293-defaultIpConfiguration"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-networking/providers/Microsoft.Network/virtualNetworks/vnet-ne-sandbox-cm/subnets/snet-ne-dev"
  }
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 16:11:56"
    modifiedOnDate = "2025-05-03 16:11:48"
  }
}
