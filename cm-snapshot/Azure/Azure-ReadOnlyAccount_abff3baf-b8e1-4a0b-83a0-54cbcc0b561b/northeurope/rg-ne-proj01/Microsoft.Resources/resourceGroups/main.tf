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

resource "azurerm_resource_group" "rg-ne-proj01" {
  name     = "rg-ne-proj01"
  location = "northeurope"
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:48:07"
    modifiedOnDate = "2025-05-03 15:48:07"
  }
}
