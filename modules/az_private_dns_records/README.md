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
| [azurerm_dns_ns_record.ns_record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_ns_record) | resource |
| [azurerm_private_dns_a_record.a_record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_a_record) | resource |
| [azurerm_private_dns_aaaa_record.a_record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_aaaa_record) | resource |
| [azurerm_private_dns_cname_record.cname_record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_cname_record) | resource |
| [azurerm_private_dns_mx_record.mx_record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_mx_record) | resource |
| [azurerm_private_dns_ptr_record.ptr_record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_ptr_record) | resource |
| [azurerm_private_dns_srv_record.srv_record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_srv_record) | resource |
| [azurerm_private_dns_txt_record.txt_record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_txt_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_record_name"></a> [record\_name](#input\_record\_name) | (Required) The name of the DNS Record. | `string` | n/a | yes |
| <a name="input_record_type"></a> [record\_type](#input\_record\_type) | Type of DNS record to be created (TXT\|SRV\|PTR\|NS\|MX\|CNAME\|CAA\|AAAA\|A\|) | `string` | n/a | yes |
| <a name="input_records"></a> [records](#input\_records) | (Required) A list of values that make up the record. | `any` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) Specifies the resource group where the resource exists. | `string` | n/a | yes |
| <a name="input_tags_records"></a> [tags\_records](#input\_tags\_records) | (Optional) A mapping of tags to assign to the resource. | `map(any)` | n/a | yes |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | (Required) The Time To Live (TTL) of the DNS record in seconds. | `string` | n/a | yes |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | (Required) Specifies the DNS Zone where the DNS Zone (parent resource) exists. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_a_record_fqdn"></a> [a\_record\_fqdn](#output\_a\_record\_fqdn) | The FQDN of the DNS A Record |
| <a name="output_a_record_id"></a> [a\_record\_id](#output\_a\_record\_id) | The Private DNS A Record ID. |
| <a name="output_aaaa_record_fqdn"></a> [aaaa\_record\_fqdn](#output\_aaaa\_record\_fqdn) | The FQDN of the DNS AAAA Record |
| <a name="output_aaaa_record_id"></a> [aaaa\_record\_id](#output\_aaaa\_record\_id) | The Private DNS AAAA Record ID. |
| <a name="output_cname_record_fqdn"></a> [cname\_record\_fqdn](#output\_cname\_record\_fqdn) | The FQDN of the DNS CNAME Record |
| <a name="output_cname_record_id"></a> [cname\_record\_id](#output\_cname\_record\_id) | The Private DNS CNAME Record ID. |
| <a name="output_mx_record_fqdn"></a> [mx\_record\_fqdn](#output\_mx\_record\_fqdn) | The FQDN of the DNS MX Record |
| <a name="output_mx_record_id"></a> [mx\_record\_id](#output\_mx\_record\_id) | The Private DNS MX Record ID. |
| <a name="output_ns_record_fqdn"></a> [ns\_record\_fqdn](#output\_ns\_record\_fqdn) | The FQDN of the DNS NS Record |
| <a name="output_ns_record_id"></a> [ns\_record\_id](#output\_ns\_record\_id) | The DNS NS Record ID. |
| <a name="output_ptr_record_fqdn"></a> [ptr\_record\_fqdn](#output\_ptr\_record\_fqdn) | The FQDN of the DNS PTR Record |
| <a name="output_ptr_record_id"></a> [ptr\_record\_id](#output\_ptr\_record\_id) | The Private DNS PTR Record ID. |
| <a name="output_srv_record_fqdn"></a> [srv\_record\_fqdn](#output\_srv\_record\_fqdn) | The FQDN of the DNS SRV Record |
| <a name="output_srv_record_id"></a> [srv\_record\_id](#output\_srv\_record\_id) | The Private DNS SRV Record ID. |
| <a name="output_txt_record_fqdn"></a> [txt\_record\_fqdn](#output\_txt\_record\_fqdn) | The FQDN of the DNS TXT Record |
| <a name="output_txt_record_id"></a> [txt\_record\_id](#output\_txt\_record\_id) | The Private DNS TXT Record ID. |
