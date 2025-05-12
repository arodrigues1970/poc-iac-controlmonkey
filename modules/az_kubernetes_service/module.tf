resource "azurerm_kubernetes_cluster" "aks" {
  name                    = var.name
  location                = var.location
  resource_group_name     = var.resource_group_name
  dns_prefix              = var.dns_prefix
  private_cluster_enabled = var.private_cluster_enabled
  node_resource_group     = var.node_resource_group
  sku_tier                = var.sku_tier
  private_dns_zone_id     = var.private_dns_zone_id
  kubernetes_version      = var.kubernetes_version

  default_node_pool {
    name               = var.dnf_name
    node_count         = var.dnf_node_count
    vm_size            = var.dnf_vm_size
    os_disk_size_gb    = var.dnf_os_disk_size_gb
    os_disk_type       = var.dnf_os_disk_type
    availability_zones = var.dnf_availability_zones
    vnet_subnet_id     = var.dnf_vnet_subnet_id
  }

  network_profile {
    network_plugin    = var.np_network_plugin
    network_policy    = var.np_network_policy
    load_balancer_sku = var.np_load_balancer_sku
  }

  identity {
    type                      = var.idt_type
    user_assigned_identity_id = var.idt_user_assigned_identity_id
  }

  dynamic "role_based_access_control" {
    for_each = var.role_based_access_control
    content {
      enabled = role_based_access_control.value.enabled
      azure_active_directory {
        managed                = role_based_access_control.value.azure_active_directory["managed"]
        admin_group_object_ids = role_based_access_control.value.azure_active_directory["admin_group_object_ids"]
        azure_rbac_enabled     = role_based_access_control.value.azure_active_directory["azure_rbac_enabled"]
      }
    }
  }

  addon_profile {
    oms_agent {
      enabled                    = var.oms_enabled
      log_analytics_workspace_id = var.oms_log_analytics_workspace_id
    }
  }

  tags = var.tags
}

resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
  for_each              = { for node_pool in var.node_pool_list : node_pool.name => node_pool }
  name                  = each.value.name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = each.value.vm_size
  node_count            = each.value.node_count
  vnet_subnet_id        = var.dnf_vnet_subnet_id
  tags                  = var.tags
}
