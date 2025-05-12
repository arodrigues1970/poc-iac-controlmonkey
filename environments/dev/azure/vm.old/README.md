## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | =1.0.6 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =2.75.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =2.75.0 |
| <a name="provider_azurerm.hub"></a> [azurerm.hub](#provider\_azurerm.hub) | =2.75.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vm_linux"></a> [vm\_linux](#module\_vm\_linux) | ../../../modules/az_vm_linux |  |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.migs](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/resources/resource_group) | resource |
| [azurerm_key_vault.devops](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/key_vault) | data source |
| [azurerm_key_vault_secret.linuxpassadmin](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/key_vault_secret) | data source |
| [azurerm_key_vault_secret.linuxuseradmin](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/key_vault_secret) | data source |
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/network_security_group) | data source |
| [azurerm_subnet.snet](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keyvault_001_name"></a> [keyvault\_001\_name](#input\_keyvault\_001\_name) | The name of the Key Vault | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region where the Resource Group should exist. | `string` | n/a | yes |
| <a name="input_nsg_001_name"></a> [nsg\_001\_name](#input\_nsg\_001\_name) | The name of the network security group | `string` | n/a | yes |
| <a name="input_resource_group_devops_name"></a> [resource\_group\_devops\_name](#input\_resource\_group\_devops\_name) | The name of the DevOps resource group | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_resource_group_netw_name"></a> [resource\_group\_netw\_name](#input\_resource\_group\_netw\_name) | The name of the Netw resource group | `string` | n/a | yes |
| <a name="input_secret_linuxpassadmin"></a> [secret\_linuxpassadmin](#input\_secret\_linuxpassadmin) | The name of the Key Vault Secret | `string` | n/a | yes |
| <a name="input_secret_linuxuseradmin"></a> [secret\_linuxuseradmin](#input\_secret\_linuxuseradmin) | The name of the Key Vault Secret | `string` | n/a | yes |
| <a name="input_subnet_001_name"></a> [subnet\_001\_name](#input\_subnet\_001\_name) | The name of the subnet | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags | `map(string)` | n/a | yes |
| <a name="input_vm_config_001"></a> [vm\_config\_001](#input\_vm\_config\_001) | n/a | <pre>object(<br>    {<br>      name = string<br>      size = string<br>      zone = string<br>      boot_diagnostics = object(<br>        {<br>          storage_account_uri = string<br>        }<br>      )<br>      authentication_type = string<br>      admin_ssh_key = object(<br>        {<br>          public_key = string<br>          username   = string<br>          password   = string<br>        }<br>      )<br>      os_disk = object(<br>        {<br>          caching                   = string<br>          disk_encryption_set_id    = string<br>          disk_size_gb              = number<br>          name                      = string<br>          storage_account_type      = string<br>          write_accelerator_enabled = bool<br>        }<br>      )<br>      image = object(<br>        {<br>          publisher = string<br>          offer     = string<br>          sku       = string<br>          version   = string<br>        }<br>      )<br>      additional_capabilities = object(<br>        {<br>          ultra_ssd_enabled = bool<br>        }<br>      )<br>      manage_identity_info = object(<br>        {<br>          type         = string<br>          identity_ids = list(string)<br>        }<br>      )<br>      nic_info = list(object(<br>        {<br>          nic_name             = string<br>          ip_config_name       = string<br>          private_ip_address   = string<br>          subnet_id            = string<br>          dns_servers          = list(string)<br>          enable_ip_forwarding = bool<br>          ip_allocation        = string<br>        }<br>      ))<br>      disks_list = list(object(<br>        {<br>          caching              = string<br>          create_option        = string<br>          disk_iops_read_write = number<br>          disk_size_gb         = number<br>          lun                  = number<br>          name                 = string<br>          storage_account_type = string<br>          zones                = list(number)<br>        }<br>      ))<br>    }<br>  )</pre> | n/a | yes |
| <a name="input_vnet_001_name"></a> [vnet\_001\_name](#input\_vnet\_001\_name) | The name of the virtual network | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_snet_id"></a> [snet\_id](#output\_snet\_id) | The subnet ID |
| <a name="output_vnet_guid"></a> [vnet\_guid](#output\_vnet\_guid) | n/a |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | n/a |
