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

resource "azurerm_resource_group" "rg-ne-0001-dev" {
  name     = "rg-ne-0001-dev"
  location = "northeurope"
  tags = {
    createdByName  = "sp-xyzcm-poc"
    modifiedByName = "sp-xyzcm-poc"
    createdOnDate  = "2025-05-15 11:01:26"
    modifiedOnDate = "2025-05-15 11:01:26"
  }
}
