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
| <a name="module_postgresql"></a> [postgresql](#module\_postgresql) | ../../../modules/az_database_postgresql |  |
| <a name="module_private_endpoints"></a> [private\_endpoints](#module\_private\_endpoints) | ../../../modules/az_network_private_endpoint |  |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.am](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/resources/resource_group) | resource |
| [azurerm_key_vault.devops](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/key_vault) | data source |
| [azurerm_key_vault_secret.linuxpassadmindb](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/key_vault_secret) | data source |
| [azurerm_key_vault_secret.linuxuseradmindb](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/key_vault_secret) | data source |
| [azurerm_subnet.snet](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/subnet) | data source |
| [azurerm_virtual_network.netw](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/virtual_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keyvault_001_name"></a> [keyvault\_001\_name](#input\_keyvault\_001\_name) | The name of the Key Vault | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region where the Resource Group should exist. | `string` | n/a | yes |
| <a name="input_postgresql_001"></a> [postgresql\_001](#input\_postgresql\_001) | An object with all PostgreSQL settings and parameters | <pre>object({<br>    name                             = string<br>    administrator_login              = string<br>    administrator_login_password     = string<br>    sku_name                         = string<br>    db_version                       = string<br>    storage_mb                       = number<br>    backup_retention_days            = number<br>    geo_redundant_backup_enabled     = bool<br>    auto_grow_enabled                = bool<br>    public_network_access_enabled    = bool<br>    ssl_enforcement_enabled          = bool<br>    ssl_minimal_tls_version_enforced = string<br>  })</pre> | n/a | yes |
| <a name="input_private_endpoint_001"></a> [private\_endpoint\_001](#input\_private\_endpoint\_001) | An object with all Private Endpoint settings and parameters | <pre>object({<br>    name                               = string<br>    subnet_id                          = string<br>    psc_name                           = string<br>    psc_private_connection_resource_id = string<br>    psc_subresource_names              = list(string)<br>    psc_is_manual_connection           = bool<br>  })</pre> | n/a | yes |
| <a name="input_resource_group_devops_name"></a> [resource\_group\_devops\_name](#input\_resource\_group\_devops\_name) | The name of the DevOps resource group | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_resource_group_netw_name"></a> [resource\_group\_netw\_name](#input\_resource\_group\_netw\_name) | The name of the Netw resource group | `string` | n/a | yes |
| <a name="input_secret_linuxpassadmindb"></a> [secret\_linuxpassadmindb](#input\_secret\_linuxpassadmindb) | The name of the Key Vault Secret | `string` | n/a | yes |
| <a name="input_secret_linuxuseradmindb"></a> [secret\_linuxuseradmindb](#input\_secret\_linuxuseradmindb) | The name of the Key Vault Secret | `string` | n/a | yes |
| <a name="input_subnet_001_name"></a> [subnet\_001\_name](#input\_subnet\_001\_name) | The name of the subnet | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags | `map(string)` | n/a | yes |
| <a name="input_vnet_001_name"></a> [vnet\_001\_name](#input\_vnet\_001\_name) | The name of the virtual network | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_snet_id"></a> [snet\_id](#output\_snet\_id) | The subnet ID |
| <a name="output_vnet_guid"></a> [vnet\_guid](#output\_vnet\_guid) | The VNet GUID |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | The VNet ID |
