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

resource "azurerm_resource_group" "NetworkWatcherRG" {
  name     = "NetworkWatcherRG"
  location = "northeurope"
  tags = {
    createdByName  = "Azure Traffic Manager and DNS"
    modifiedByName = "Azure Traffic Manager and DNS"
    createdOnDate  = "2025-05-03 13:25:17"
    modifiedOnDate = "2025-05-03 13:25:17"
  }
}
