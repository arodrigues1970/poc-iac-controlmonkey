## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | =1.0.6 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =2.75.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =2.75.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_storage_account"></a> [storage\_account](#module\_storage\_account) | ../../../modules/az_storage_account |  |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.vault](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/resources/key_vault) | resource |
| [azurerm_resource_group.devops](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/resources/resource_group) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/2.75.0/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_vault_list"></a> [key\_vault\_list](#input\_key\_vault\_list) | Key Vault List | <pre>list(object(<br>    {<br>      name                        = string<br>      enabled_for_disk_encryption = bool<br>      soft_delete_retention_days  = number<br>      purge_protection_enabled    = bool<br>      sku_name                    = string<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region where the Resource Group should exist. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_storage_account_list"></a> [storage\_account\_list](#input\_storage\_account\_list) | Storage Account List | <pre>list(object(<br>    {<br>      storage_name             = string<br>      storage_tier             = string<br>      storage_replication_type = string<br>      allow_blob_public_access = bool<br>      min_tls                  = string<br>      account_kind             = string<br>      container_list = list(object(<br>        {<br>          name                  = string<br>          container_access_type = string<br>        }<br>      ))<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_vault_id"></a> [key\_vault\_id](#output\_key\_vault\_id) | The ID of the Key Vault |
| <a name="output_storage_account_id"></a> [storage\_account\_id](#output\_storage\_account\_id) | The ID of the Storage Account |
