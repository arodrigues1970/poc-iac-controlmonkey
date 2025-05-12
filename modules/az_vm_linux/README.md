## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_disk_obj"></a> [disk\_obj](#module\_disk\_obj) | ../az_managed_disk |  |
| <a name="module_nic_obj"></a> [nic\_obj](#module\_nic\_obj) | ../az_network_nic |  |

## Resources

| Name | Type |
|------|------|
| [azurerm_backup_protected_vm.backup](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/backup_protected_vm) | resource |
| [azurerm_linux_virtual_machine.avm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_virtual_machine_extension.vmext](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_extension) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_policy"></a> [enable\_policy](#input\_enable\_policy) | Enable policy? | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource exists | `string` | n/a | yes |
| <a name="input_policy_id"></a> [policy\_id](#input\_policy\_id) | RSV Policy ID | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_rsv_name"></a> [rsv\_name](#input\_rsv\_name) | Recovery Service Vault Name | `string` | `null` | no |
| <a name="input_script_file"></a> [script\_file](#input\_script\_file) | Script that will run when the VM is created | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |
| <a name="input_vm_info"></a> [vm\_info](#input\_vm\_info) | Object with all VM configuration parameters | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | n/a |
