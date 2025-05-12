module "nic_obj" {
  for_each = { for nic_info in var.vm_info.nic_info : nic_info.nic_name => nic_info }
  source   = "../az_network_nic"

  nic_name             = each.value.nic_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  ip_config_name       = each.value.ip_config_name
  private_ip_address   = each.value.private_ip_address
  subnet_id            = each.value.subnet_id
  dns_servers          = each.value.dns_servers
  enable_ip_forwarding = each.value.enable_ip_forwarding
  ip_allocation        = each.value.ip_allocation
  tags                 = var.tags
}
