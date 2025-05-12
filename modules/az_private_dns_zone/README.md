## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_private_dns_records"></a> [private\_dns\_records](#module\_private\_dns\_records) | ../az_private_dns_records |  |

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_zone.private_dns](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone_virtual_network_link) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the Private DNS Zone | `string` | n/a | yes |
| <a name="input_private_dns_records_list"></a> [private\_dns\_records\_list](#input\_private\_dns\_records\_list) | List of Private DNS Records | <pre>list(object(<br>    {<br>      record_type = string<br>      record_name = string<br>      ttl         = number<br>      records     = list(string)<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Specifies the resource group where the resource exists | `string` | n/a | yes |
| <a name="input_soa_record"></a> [soa\_record](#input\_soa\_record) | Soa Record | <pre>list(object(<br>    {<br>      email        = string<br>      expire_time  = number<br>      minimum_ttl  = number<br>      refresh_time = number<br>      retry_time   = number<br>      ttl          = number<br>      tags         = map(string)<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_vnet_link_list"></a> [vnet\_link\_list](#input\_vnet\_link\_list) | List of Vnet | <pre>list(object(<br>    {<br>      name    = string<br>      vnet_id = string<br>    }<br>  ))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_max_number_of_record_sets"></a> [max\_number\_of\_record\_sets](#output\_max\_number\_of\_record\_sets) | rThe maximum number of record sets that can be created in this Private DNS zone |
| <a name="output_max_number_of_virtual_network_links"></a> [max\_number\_of\_virtual\_network\_links](#output\_max\_number\_of\_virtual\_network\_links) | The maximum number of virtual networks that can be linked to this Private DNS zone |
| <a name="output_max_number_of_virtual_network_links_with_registration"></a> [max\_number\_of\_virtual\_network\_links\_with\_registration](#output\_max\_number\_of\_virtual\_network\_links\_with\_registration) | The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled |
| <a name="output_number_of_record_sets"></a> [number\_of\_record\_sets](#output\_number\_of\_record\_sets) | The current number of record sets in this Private DNS zone |
| <a name="output_private_dns_zone_id"></a> [private\_dns\_zone\_id](#output\_private\_dns\_zone\_id) | The Private DNS Zone ID |
| <a name="output_private_dns_zone_virtual_network_link_id"></a> [private\_dns\_zone\_virtual\_network\_link\_id](#output\_private\_dns\_zone\_virtual\_network\_link\_id) | The ID of the Private DNS Zone Virtual Network Link. |
