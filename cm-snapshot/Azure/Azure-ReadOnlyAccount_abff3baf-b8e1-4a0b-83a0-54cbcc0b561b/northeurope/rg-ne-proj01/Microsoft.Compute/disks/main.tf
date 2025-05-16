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

resource "azurerm_managed_disk" "poc-vm-003_OsDisk_1_1751243476c9434486d071846e3ed457" {
  name                   = "poc-vm-003_OsDisk_1_1751243476c9434486d071846e3ed457"
  location               = "northeurope"
  resource_group_name    = "RG-NE-PROJ01"
  storage_account_type   = "Premium_LRS"
  create_option          = "FromImage"
  trusted_launch_enabled = true
  image_reference_id     = "/Subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/Providers/Microsoft.Compute/Locations/northeurope/Publishers/canonical/ArtifactTypes/VMImage/Offers/ubuntu-24_04-lts/Skus/server/Versions/24.04.202505020"
  zone                   = 2
  hyper_v_generation     = "V2"
  os_type                = "Linux"
  tags = {
    createdByName  = "Compute Resource Provider"
    modifiedByName = "Compute Resource Provider"
    createdOnDate  = "2025-05-03 16:14:33"
    modifiedOnDate = "2025-05-03 16:05:13"
  }
}
