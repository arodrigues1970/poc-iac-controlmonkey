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
  default = "RG-NE-VMS"
}

resource "azurerm_managed_disk" "poc-vm-001_OsDisk_1_79fd2ad69d77442181cc4b02caa319a5" {
  name                   = "poc-vm-001_OsDisk_1_79fd2ad69d77442181cc4b02caa319a5"
  location               = var.location
  resource_group_name    = var.resource_group_name
  storage_account_type   = "Premium_LRS"
  create_option          = "FromImage"
  trusted_launch_enabled = true
  image_reference_id     = "/Subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/Providers/Microsoft.Compute/Locations/northeurope/Publishers/RedHat/ArtifactTypes/VMImage/Offers/RHEL/Skus/95_gen2/Versions/9.5.2025040316"
  zone                   = 2
  hyper_v_generation     = "V2"
  os_type                = "Linux"
  tags = {
    createdByName  = "Compute Resource Provider"
    modifiedByName = "Compute Resource Provider"
    createdOnDate  = "2025-05-03 15:27:53"
    modifiedOnDate = "2025-05-03 15:38:07"
  }
}

resource "azurerm_managed_disk" "poc-vm-002_OsDisk_1_9304552d5f654e9591bca800be8d5c2f" {
  name                   = "poc-vm-002_OsDisk_1_9304552d5f654e9591bca800be8d5c2f"
  location               = var.location
  resource_group_name    = var.resource_group_name
  storage_account_type   = "Premium_LRS"
  create_option          = "FromImage"
  trusted_launch_enabled = true
  image_reference_id     = "/Subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b/Providers/Microsoft.Compute/Locations/northeurope/Publishers/MicrosoftWindowsServer/ArtifactTypes/VMImage/Offers/WindowsServer/Skus/2022-datacenter-azure-edition-hotpatch/Versions/20348.3562.250404"
  zone                   = 2
  hyper_v_generation     = "V2"
  os_type                = "Windows"
  tags = {
    createdByName  = "Compute Resource Provider"
    modifiedByName = "Compute Resource Provider"
    createdOnDate  = "2025-05-03 15:44:04"
    modifiedOnDate = "2025-05-03 15:34:25"
  }
}
