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
| [azurerm_managed_disk.amd](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/managed_disk) | resource |
| [azurerm_virtual_machine_data_disk_attachment.adattach](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_data_disk_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_caching"></a> [caching](#input\_caching) | Specifies the caching requirements for this Data Disk. Possible values include None, ReadOnly and ReadWrite | `string` | `"None"` | no |
| <a name="input_create_option"></a> [create\_option](#input\_create\_option) | The method to use when creating the managed disk. Possible values include: Import, Empty, Copy, FromImage, Restore | `string` | `"Empty"` | no |
| <a name="input_disk_iops_read_write"></a> [disk\_iops\_read\_write](#input\_disk\_iops\_read\_write) | The number of IOPS allowed for this disk; only settable for UltraSSD disks. | `string` | `null` | no |
| <a name="input_disk_size_gb"></a> [disk\_size\_gb](#input\_disk\_size\_gb) | Specifies the size of the managed disk to create in gigabytes | `number` | `128` | no |
| <a name="input_location"></a> [location](#input\_location) | Specified the supported Azure location where the resource exists | `string` | n/a | yes |
| <a name="input_lun"></a> [lun](#input\_lun) | The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine | `number` | `0` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the Managed Disk | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group where the Managed Disk should exist | `string` | n/a | yes |
| <a name="input_storage_account_type"></a> [storage\_account\_type](#input\_storage\_account\_type) | The type of storage to use for the managed disk. Possible values are: Standard\_LRS, Premium\_LRS, StandardSSD\_LRS or UltraSSD\_LRS | `string` | `"Premium_LRS"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_vm_id"></a> [vm\_id](#input\_vm\_id) | The ID of the Virtual Machine to which the Data Disk should be attached | `string` | `null` | no |
| <a name="input_zones"></a> [zones](#input\_zones) | A collection containing the availability zone to allocate the Managed Disk in | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_amd_id"></a> [amd\_id](#output\_amd\_id) | n/a |
| <a name="output_amd_output"></a> [amd\_output](#output\_amd\_output) | n/a |
