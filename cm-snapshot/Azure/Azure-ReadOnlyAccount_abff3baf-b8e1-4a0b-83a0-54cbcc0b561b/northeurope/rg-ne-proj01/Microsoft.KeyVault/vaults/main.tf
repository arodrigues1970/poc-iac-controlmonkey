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

resource "azurerm_key_vault" "kv-ne-proj01" {
  name                = "kv-ne-proj01"
  location            = "northeurope"
  resource_group_name = "rg-ne-proj01"
  sku_name            = "standard"
  tenant_id           = "10338048-193a-4298-abea-3596ae88b05e"
  network_acls {
    default_action = "Deny"
    bypass         = "None"
  }
  public_network_access_enabled = false
  enable_rbac_authorization     = true
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 15:59:13"
    modifiedOnDate = "2025-05-03 16:32:56"
  }
}
