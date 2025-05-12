resource_group_name        = "rg-ne-xyz-vm"
resource_group_netw_name   = "rg-ne-networking"
storageaccount_name        = "stnexyzenv0test1"
location                   = "North Europe"
vnet_001_name              = "vnet-ne-sandbox-e0"
subnet_001_name            = "snet-ne-dev"
vm_config_001 = {
  name = "azlxyzdev001"
  size = "Standard_D2_v4"
  zone = null
  boot_diagnostics = {
    storage_account_uri = null
  }
  authentication_type = "password" #password/publicKey
  admin_ssh_key = {
    public_key = null #local
    username   = null #local
    password   = null #local
  }
  os_disk = {
    "caching"                   = "None"
    "disk_encryption_set_id"    = null
    "disk_size_gb"              = 32
    "name"                      = "azlxyzdev001-OsDisk"
    "storage_account_type"      = "StandardSSD_LRS"
    "write_accelerator_enabled" = false
  }
  image = {
    "publisher" = "Canonical"
    "offer"     = "0001-com-ubuntu-server-jammy"
    "sku"       = "22_04-lts"
    "version"   = "latest"
  }
  additional_capabilities = {
    "ultra_ssd_enabled" = false
  }
  manage_identity_info = {
    "type"         = "SystemAssigned"
    "identity_ids" = []
  }
  nic_info = [
    {
      nic_name             = null #local
      ip_config_name       = null #local
      private_ip_address   = null #local
      subnet_id            = null #local
      dns_servers          = null #local
      enable_ip_forwarding = null #local
      ip_allocation        = null #local
    }
  ]
  disks_list = [
    {
      caching              = "ReadOnly"
      create_option        = "Empty"
      disk_iops_read_write = null
      disk_size_gb         = 64
      lun                  = 0
      name                 = "azlxyzdev001-data-01"
      storage_account_type = "StandardSSD_LRS"
      zones                = []
    }
  ]
}
tags = {
  "ManagedBy" = "Terraform"
  "Sandbox" = "True"
  "StopStartVM" = "False"
}
