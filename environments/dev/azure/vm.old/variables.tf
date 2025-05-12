variable "subscription_id" {
  description = "The name of the resource group"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "resource_group_netw_name" {
  description = "The name of the Netw resource group"
  type        = string
}
variable "location" {
  description = "The Azure Region where the Resource Group should exist."
  type        = string
}
variable "tags" {
  description = "A mapping of tags"
  type        = map(string)
}
variable "vnet_001_name" {
  description = "The name of the virtual network"
  type        = string
}
variable "subnet_001_name" {
  description = "The name of the subnet"
  type        = string
}
variable "secret_linuxuseradmin" {
  description = "The name of the Key Vault Secret"
  type        = string
}
variable "secret_linuxpassadmin" {
  description = "The name of the Key Vault Secret"
  type        = string
}
variable "vm_config_001" {
  description = ""
  type = object(
    {
      name = string
      size = string
      zone = string
      boot_diagnostics = object(
        {
          storage_account_uri = string
        }
      )
      authentication_type = string
      admin_ssh_key = object(
        {
          public_key = string
          username   = string
          password   = string
        }
      )
      os_disk = object(
        {
          caching                   = string
          disk_encryption_set_id    = string
          disk_size_gb              = number
          name                      = string
          storage_account_type      = string
          write_accelerator_enabled = bool
        }
      )
      image = object(
        {
          publisher = string
          offer     = string
          sku       = string
          version   = string
        }
      )
      additional_capabilities = object(
        {
          ultra_ssd_enabled = bool
        }
      )
      manage_identity_info = object(
        {
          type         = string
          identity_ids = list(string)
        }
      )
      nic_info = list(object(
        {
          nic_name             = string
          ip_config_name       = string
          private_ip_address   = string
          subnet_id            = string
          dns_servers          = list(string)
          enable_ip_forwarding = bool
          ip_allocation        = string
        }
      ))
      disks_list = list(object(
        {
          caching              = string
          create_option        = string
          disk_iops_read_write = number
          disk_size_gb         = number
          lun                  = number
          name                 = string
          storage_account_type = string
          zones                = list(number)
        }
      ))
    }
  )
}
