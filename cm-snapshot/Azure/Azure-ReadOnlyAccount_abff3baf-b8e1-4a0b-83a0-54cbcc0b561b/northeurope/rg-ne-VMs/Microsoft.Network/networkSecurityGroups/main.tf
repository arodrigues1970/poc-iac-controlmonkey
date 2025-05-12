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

resource "azurerm_network_security_group" "poc-vm-002-nsg" {
  name                = "poc-vm-002-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule = []
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:34:11"
    modifiedOnDate = "2025-05-03 15:34:39"
  }
}

resource "azurerm_network_security_group" "poc-vm-001-nsg" {
  name                = "poc-vm-001-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule = []
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:27:58"
    modifiedOnDate = "2025-05-03 15:28:06"
  }
}
