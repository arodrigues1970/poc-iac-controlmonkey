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
| [azurerm_network_interface.anic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | A list of IP Addresses defining the DNS Servers which should be used for this Network Interface | `list(string)` | n/a | yes |
| <a name="input_enable_ip_forwarding"></a> [enable\_ip\_forwarding](#input\_enable\_ip\_forwarding) | Should IP Forwarding be enabled? | `bool` | `false` | no |
| <a name="input_ip_allocation"></a> [ip\_allocation](#input\_ip\_allocation) | The allocation method used for the Private IP Address. Possible values are Dynamic and Static | `string` | `"Dynamic"` | no |
| <a name="input_ip_config_name"></a> [ip\_config\_name](#input\_ip\_config\_name) | A name used for this IP Configuration | `string` | `"internal"` | no |
| <a name="input_location"></a> [location](#input\_location) | The location where the Network Interface should exist | `string` | n/a | yes |
| <a name="input_nic_name"></a> [nic\_name](#input\_nic\_name) | The name of the Network Interface | `string` | n/a | yes |
| <a name="input_private_ip_address"></a> [private\_ip\_address](#input\_private\_ip\_address) | The Static IP Address which should be used | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group in which to create the Network Interface | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the Subnet where this Network Interface should be located in | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nic_id"></a> [nic\_id](#output\_nic\_id) | n/a |
| <a name="output_nic_ip"></a> [nic\_ip](#output\_nic\_ip) | n/a |
| <a name="output_nic_output"></a> [nic\_output](#output\_nic\_output) | n/a |
