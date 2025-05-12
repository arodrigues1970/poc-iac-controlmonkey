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

resource "azurerm_network_watcher" "NetworkWatcher_northeurope" {
  name                = "NetworkWatcher_northeurope"
  location            = "northeurope"
  resource_group_name = "NetworkWatcherRG"
  tags = {
    createdByName  = "Azure Traffic Manager and DNS"
    modifiedByName = "Azure Traffic Manager and DNS"
    createdOnDate  = "2025-05-03 13:25:24"
    modifiedOnDate = "2025-05-03 13:34:27"
  }
}
