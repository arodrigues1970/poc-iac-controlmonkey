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

resource "azurerm_log_analytics_workspace" "law-ne-xyzcm-logs" {
  name                = "law-ne-xyzcm-logs"
  location            = "northeurope"
  resource_group_name = "rg-ne-logging"
  sku                 = "PerGB2018"
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 13:12:27"
    modifiedOnDate = "2025-05-03 13:02:19"
  }
}
