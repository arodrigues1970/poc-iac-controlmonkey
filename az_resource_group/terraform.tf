terraform {
  required_version = "~> 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.117, < 5.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.3.0"
    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}
