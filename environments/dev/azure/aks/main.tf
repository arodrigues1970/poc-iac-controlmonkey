resource "azurerm_resource_group" "aks" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

data "azurerm_virtual_network" "netw" {
  name                = data.vnet_001_name
  resource_group_name = data.resource_group_netw
}

data "azurerm_subnet" "snet" {
  name                 = var.subnet_name
  resource_group_name  = data.azurerm_virtual_network.netw.resource_group_name
  virtual_network_name = data.azurerm_virtual_network.netw.name
}

module "kubernetes" {
  source                         = "../../../../modules/az_kubernetes_service"
  name                           = var.aks_name
  location                       = var.location
  resource_group_name            = azurerm_resource_group.aks.name
  dns_prefix                     = each.value.dns_prefix
  private_cluster_enabled        = each.value.private_cluster_enabled
  node_resource_group            = each.value.node_resource_group
  sku_tier                       = each.value.sku_tier
  private_dns_zone_id            = each.value.private_dns_zone_id
  kubernetes_version             = each.value.kubernetes_version
  dnf_name                       = each.value.dnf_name
  dnf_node_count                 = each.value.dnf_node_count
  dnf_vm_size                    = each.value.dnf_vm_size
  dnf_os_disk_size_gb            = each.value.dnf_os_disk_size_gb
  dnf_os_disk_type               = each.value.dnf_os_disk_type
  dnf_availability_zones         = each.value.dnf_availability_zones
  dnf_vnet_subnet_id             = each.value.dnf_vnet_subnet_id
  np_network_plugin              = each.value.np_network_plugin
  np_network_policy              = each.value.np_network_policy
  np_load_balancer_sku           = each.value.np_load_balancer_sku
  idt_type                       = each.value.idt_type
  idt_user_assigned_identity_id  = each.value.idt_user_assigned_identity_id
  oms_enabled                    = each.value.oms_enabled
  oms_log_analytics_workspace_id = each.value.oms_log_analytics_workspace_id
  node_pool_list                 = each.value.node_pool_list
  role_based_access_control      = each.value.role_based_access_control
  tags                           = var.tags
}