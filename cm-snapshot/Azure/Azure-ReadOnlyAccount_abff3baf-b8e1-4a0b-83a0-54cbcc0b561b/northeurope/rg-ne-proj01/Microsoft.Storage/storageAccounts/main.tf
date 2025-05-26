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

resource "azurerm_storage_account" "stxyzcmpoc001" {
  name                            = "stxyzcmpoc001"
  location                        = "northeurope"
  resource_group_name             = "rg-ne-proj01"
  account_replication_type        = "LRS"
  account_tier                    = "Standard"
  public_network_access_enabled   = false
  allow_nested_items_to_be_public = false
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:52:25"
    modifiedOnDate = "2025-05-03 16:33:59"
  }
}
