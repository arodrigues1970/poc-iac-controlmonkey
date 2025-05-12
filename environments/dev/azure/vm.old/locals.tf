locals {
  subnet_data_list = var.subnet_001_name
  vm_config_001 = merge(
    var.vm_config_001,
    {
      admin_ssh_key = {
        public_key = file("./../../../../certificates/linuxuser.pub")
        username   = "linuxuser"
        password   = "Passw0rdXXYZ2025"
      }
    },
    {
      nic_info = [
        {
          nic_name             = "${var.vm_config_001.name}-nic"
          ip_config_name       = "internal"
          private_ip_address   = cidrhost(data.azurerm_subnet.snet.address_prefixes, 21)
          subnet_id            = data.azurerm_subnet.snet.id
          dns_servers          = []
          enable_ip_forwarding = false
          ip_allocation        = "Static"
        }
      ]
    }
  )

  vm_linux_list = [local.vm_config_001]
}
