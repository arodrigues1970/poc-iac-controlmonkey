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
| [azurerm_network_security_rule.nsg_rule_obj](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access"></a> [access](#input\_access) | Specifies whether network traffic is allowed or denied | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | A description for this rule | `string` | `null` | no |
| <a name="input_destination_address_prefix"></a> [destination\_address\_prefix](#input\_destination\_address\_prefix) | CIDR or destination IP range or * to match any IP. Tags such as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used | `string` | `"*"` | no |
| <a name="input_destination_address_prefixes"></a> [destination\_address\_prefixes](#input\_destination\_address\_prefixes) | List of destination address prefixes | `list(string)` | `null` | no |
| <a name="input_destination_application_security_group_ids"></a> [destination\_application\_security\_group\_ids](#input\_destination\_application\_security\_group\_ids) | A List of destination Application Security Group ID's | `list(string)` | `null` | no |
| <a name="input_destination_port_range"></a> [destination\_port\_range](#input\_destination\_port\_range) | Destination Port or Range | `string` | n/a | yes |
| <a name="input_destination_port_ranges"></a> [destination\_port\_ranges](#input\_destination\_port\_ranges) | List of destination ports or port ranges | `list(string)` | `null` | no |
| <a name="input_direction"></a> [direction](#input\_direction) | The direction specifies if rule will be evaluated on incoming or outgoing traffic | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the security rule | `string` | n/a | yes |
| <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name) | The name of the Network Security Group that we want to attach the rule to | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | Specifies the priority of the rule | `number` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | Network protocol this rule applies to | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Network Security Rule | `string` | n/a | yes |
| <a name="input_source_address_prefix"></a> [source\_address\_prefix](#input\_source\_address\_prefix) | CIDR or source IP range or * to match any IP | `string` | `"*"` | no |
| <a name="input_source_address_prefixes"></a> [source\_address\_prefixes](#input\_source\_address\_prefixes) | List of source address prefixes | `list(string)` | `null` | no |
| <a name="input_source_application_security_group_ids"></a> [source\_application\_security\_group\_ids](#input\_source\_application\_security\_group\_ids) | A List of source Application Security Group ID's | `list(string)` | `null` | no |
| <a name="input_source_port_range"></a> [source\_port\_range](#input\_source\_port\_range) | Source Port or Range | `string` | n/a | yes |
| <a name="input_source_port_ranges"></a> [source\_port\_ranges](#input\_source\_port\_ranges) | List of source ports or port ranges | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nsg_rule_id"></a> [nsg\_rule\_id](#output\_nsg\_rule\_id) | n/a |
