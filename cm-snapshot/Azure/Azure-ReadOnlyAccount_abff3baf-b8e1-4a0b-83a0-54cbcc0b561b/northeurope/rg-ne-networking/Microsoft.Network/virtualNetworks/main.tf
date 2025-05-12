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

resource "azurerm_virtual_network" "vnet-ne-sandbox-cm" {
  name                = "vnet-ne-sandbox-cm"
  location            = "northeurope"
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
