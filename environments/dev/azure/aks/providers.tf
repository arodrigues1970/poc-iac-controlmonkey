terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.75.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "=2.4.1"
    }
  }
  required_version = "=1.9.0"
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "kubernetes" {
  #The correct object to use here, with RBAC enabled, is the kube_admin_config, not kube_config
  alias                  = "xyzaksdev"
  host                   = module.kubernetes["xyzaksdev"].aks.kube_admin_config.0.host
  client_certificate     = base64decode(module.kubernetes["xyzaksdev"].aks.kube_admin_config.0.client_certificate)
  client_key             = base64decode(module.kubernetes["xyzaksdev"].aks.kube_admin_config.0.client_key)
  cluster_ca_certificate = base64decode(module.kubernetes["xyzaksdev"].aks.kube_admin_config.0.cluster_ca_certificate)
}
