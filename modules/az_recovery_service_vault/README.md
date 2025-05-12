## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_backup_policy_vm.policy_vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/backup_policy_vm) | resource |
| [azurerm_recovery_services_vault.rsv](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/recovery_services_vault) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encryption"></a> [encryption](#input\_encryption) | An encryption block | <pre>set(object(<br>    {<br>      key_id                            = string<br>      infrastructure_encryption_enabled = string<br>      use_system_assigned_identity      = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_identity"></a> [identity](#input\_identity) | An identity block | <pre>set(object(<br>    {<br>      type = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource exists | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the Recovery Services Vault | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Recovery Services Vault | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The name of the resource group in which to create the Recovery Services Vault | `string` | n/a | yes |
| <a name="input_soft_delete_enabled"></a> [soft\_delete\_enabled](#input\_soft\_delete\_enabled) | Is soft delete enable for this Vault | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `null` | no |
| <a name="input_vm_policies"></a> [vm\_policies](#input\_vm\_policies) | List of VM policies | <pre>set(object(<br>    {<br>      instant_restore_retention_days = number<br>      name                           = string<br>      timezone                       = string<br>      backup = set(object(<br>        {<br>          frequency = string<br>          time      = string<br>          weekdays  = set(string)<br>        }<br>      ))<br>      retention_daily = set(object(<br>        {<br>          count = number<br>        }<br>      ))<br>      retention_monthly = set(object(<br>        {<br>          count    = number<br>          weekdays = set(string)<br>          weeks    = set(string)<br>        }<br>      ))<br>      retention_weekly = set(object(<br>        {<br>          count    = number<br>          weekdays = set(string)<br>        }<br>      ))<br>      retention_yearly = set(object(<br>        {<br>          count    = number<br>          months   = set(string)<br>          weekdays = set(string)<br>          weeks    = set(string)<br>        }<br>      ))<br>    }<br>  ))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy_id"></a> [policy\_id](#output\_policy\_id) | The ID of the Policy |
| <a name="output_rsv_id"></a> [rsv\_id](#output\_rsv\_id) | The ID of the Recovery Services Vault |
