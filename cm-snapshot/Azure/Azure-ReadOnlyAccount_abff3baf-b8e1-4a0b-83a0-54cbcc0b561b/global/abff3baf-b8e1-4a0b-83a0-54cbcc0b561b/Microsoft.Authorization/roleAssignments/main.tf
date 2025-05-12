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


variable "scope" {
  type    = string
  default = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b"
}

resource "azurerm_role_assignment" "_93343ddc-c625-4e29-b937-b298a836d5eb" {
  principal_id         = "fd2ec435-42dd-40f8-8ed5-088c7177cecf"
  scope                = var.scope
  role_definition_name = "Contributor"
}

resource "azurerm_role_assignment" "_88f4d5c9-3054-4fa6-8719-fc6d02948a05" {
  principal_id         = "db182a7e-fc66-491b-b285-24aabbc26757"
  scope                = var.scope
  role_definition_name = "BDSO ControlMonkey Role"
}

resource "azurerm_role_assignment" "_69f83cd2-6ab3-447a-89a2-dd9919014833" {
  principal_id         = "ebe6195e-419d-4711-9660-42ac62f79b0e"
  scope                = var.scope
  role_definition_name = "Owner"
}

resource "azurerm_role_assignment" "_9ebeb9bd-e3dc-4e75-b710-096d7824c986" {
  principal_id         = "8657dc6f-2027-40e5-9292-c69716cad2ed"
  scope                = var.scope
  role_definition_name = "Contributor"
}
