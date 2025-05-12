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

resource "azurerm_resource_group" "rg-ne-cm-dev" {
  name     = "rg-ne-cm-dev"
  location = "northeurope"
  tags = {
    createdByName  = "sp-xyzcm-poc"
    modifiedByName = "sp-xyzcm-poc"
    createdOnDate  = "2025-05-07 08:36:23"
    modifiedOnDate = "2025-05-07 08:36:23"
  }
}
