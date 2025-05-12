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
| [azurerm_lb.lb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_frontend_ip_configuration"></a> [frontend\_ip\_configuration](#input\_frontend\_ip\_configuration) | Frontend Ip Configuration block | <pre>set(object(<br>    {<br>      inbound_nat_rules             = set(string)<br>      load_balancer_rules           = set(string)<br>      name                          = string<br>      outbound_rules                = set(string)<br>      private_ip_address            = string<br>      private_ip_address_allocation = string<br>      private_ip_address_version    = string<br>      public_ip_address_id          = string<br>      public_ip_prefix_id           = string<br>      subnet_id                     = string<br>      zones                         = list(string)<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure Region where the Load Balancer should be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the Load Balancer | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group in which to create the Load Balancer | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU of the Azure Load Balancer | `string` | `"Basic"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The Load Balancer ID. |
| <a name="output_lb"></a> [lb](#output\_lb) | n/a |
| <a name="output_private_ip_address"></a> [private\_ip\_address](#output\_private\_ip\_address) | The first private IP address assigned to the load balancer in frontend\_ip\_configuration blocks |
| <a name="output_private_ip_addresses"></a> [private\_ip\_addresses](#output\_private\_ip\_addresses) | The list of private IP address assigned to the load balancer in frontend\_ip\_configuration blocks |
