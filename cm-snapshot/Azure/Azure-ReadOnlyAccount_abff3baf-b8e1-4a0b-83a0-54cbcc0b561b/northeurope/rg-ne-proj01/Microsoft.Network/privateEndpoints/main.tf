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
  default = "rg-ne-proj01"
}

resource "azurerm_private_endpoint" "pep-stxyzcmpoc001" {
  name                = "pep-stxyzcmpoc001"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-networking/providers/Microsoft.Network/virtualNetworks/vnet-ne-sandbox-cm/subnets/snet-ne-dev"

  private_service_connection {
    name                           = "pep-stxyzcmpoc001"
    is_manual_connection           = "false"
    private_connection_resource_id = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-proj01/providers/Microsoft.Storage/storageAccounts/stxyzcmpoc001"
    subresource_names              = ["blob"]
  }
  custom_network_interface_name = "pep-stxyzcmpoc001-nic"
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 16:23:21"
    modifiedOnDate = "2025-05-03 16:23:21"
  }
}

resource "azurerm_private_endpoint" "pep-kv-ne-proj01" {
  name                = "pep-kv-ne-proj01"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-networking/providers/Microsoft.Network/virtualNetworks/vnet-ne-sandbox-cm/subnets/snet-ne-dev"

  private_service_connection {
    name                           = "pep-kv-ne-proj01"
    is_manual_connection           = "false"
    private_connection_resource_id = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/resourceGroups/rg-ne-proj01/providers/Microsoft.KeyVault/vaults/kv-ne-proj01"
    subresource_names              = ["vault"]
  }
  custom_network_interface_name = "pep-kv-ne-proj01-nic"
  tags = {
    createdByName  = "Renato Pereira (novobanco DSI)"
    modifiedByName = "Renato Pereira (novobanco DSI)"
    createdOnDate  = "2025-05-03 16:22:21"
    modifiedOnDate = "2025-05-03 16:22:21"
  }
}
