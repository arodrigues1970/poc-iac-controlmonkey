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

resource "azurerm_network_security_group" "poc-vm-003-nsg" {
  name                = "poc-vm-003-nsg"
  location            = "northeurope"
  resource_group_name = "rg-ne-proj01"

  security_rule = []
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:55:04"
    modifiedOnDate = "2025-05-03 16:04:51"
  }
}
