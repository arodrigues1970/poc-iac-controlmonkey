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
| [azurerm_private_endpoint.pep](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | The supported Azure location where the resource exists | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Specifies the Name of the Private Endpoint | `string` | n/a | yes |
| <a name="input_psc_is_manual_connection"></a> [psc\_is\_manual\_connection](#input\_psc\_is\_manual\_connection) | Does the Private Endpoint require Manual Approval from the remote resource owner? | `string` | n/a | yes |
| <a name="input_psc_name"></a> [psc\_name](#input\_psc\_name) | Specifies the Name of the Private Service Connection | `string` | n/a | yes |
| <a name="input_psc_private_connection_resource_id"></a> [psc\_private\_connection\_resource\_id](#input\_psc\_private\_connection\_resource\_id) | The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to | `string` | n/a | yes |
| <a name="input_psc_subresource_names"></a> [psc\_subresource\_names](#input\_psc\_subresource\_names) | A list of subresource names which the Private Endpoint is able to connect to | `list(string)` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Specifies the Name of the Resource Group within which the Private Endpoint should exist | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pep_id"></a> [pep\_id](#output\_pep\_id) | The Private Endpoint ID |
