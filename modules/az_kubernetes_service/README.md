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
| [azurerm_kubernetes_cluster.aks](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_kubernetes_cluster_node_pool.node_pool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_node_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dnf_availability_zones"></a> [dnf\_availability\_zones](#input\_dnf\_availability\_zones) | A list of Availability Zones across which the Node Pool should be spread | `list(string)` | n/a | yes |
| <a name="input_dnf_name"></a> [dnf\_name](#input\_dnf\_name) | The name which should be used for the default Kubernetes Node Pool | `string` | n/a | yes |
| <a name="input_dnf_node_count"></a> [dnf\_node\_count](#input\_dnf\_node\_count) | The initial number of nodes which should exist in this Node Pool | `number` | n/a | yes |
| <a name="input_dnf_os_disk_size_gb"></a> [dnf\_os\_disk\_size\_gb](#input\_dnf\_os\_disk\_size\_gb) | The size of the OS Disk which should be used for each agent in the Node Pool | `string` | n/a | yes |
| <a name="input_dnf_os_disk_type"></a> [dnf\_os\_disk\_type](#input\_dnf\_os\_disk\_type) | The type of disk which should be used for the Operating System | `string` | `"Managed"` | no |
| <a name="input_dnf_vm_size"></a> [dnf\_vm\_size](#input\_dnf\_vm\_size) | The size of the Virtual Machine | `string` | n/a | yes |
| <a name="input_dnf_vnet_subnet_id"></a> [dnf\_vnet\_subnet\_id](#input\_dnf\_vnet\_subnet\_id) | The ID of a Subnet where the Kubernetes Node Pool should exist | `string` | n/a | yes |
| <a name="input_dns_prefix"></a> [dns\_prefix](#input\_dns\_prefix) | DNS prefix specified when creating the managed cluster | `string` | n/a | yes |
| <a name="input_idt_type"></a> [idt\_type](#input\_idt\_type) | The type of identity used for the managed cluster | `string` | `"SystemAssigned"` | no |
| <a name="input_idt_user_assigned_identity_id"></a> [idt\_user\_assigned\_identity\_id](#input\_idt\_user\_assigned\_identity\_id) | The ID of a user assigned identity | `string` | `null` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Version of Kubernetes specified when creating the AKS managed cluster | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location where the Managed Kubernetes Cluster should be created | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the Managed Kubernetes Cluster to create | `string` | n/a | yes |
| <a name="input_node_pool_list"></a> [node\_pool\_list](#input\_node\_pool\_list) | An object with all the information and parameters of a node pool | `any` | `{}` | no |
| <a name="input_node_resource_group"></a> [node\_resource\_group](#input\_node\_resource\_group) | The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster | `string` | n/a | yes |
| <a name="input_np_load_balancer_sku"></a> [np\_load\_balancer\_sku](#input\_np\_load\_balancer\_sku) | Specifies the SKU of the Load Balancer used for this Kubernetes Cluster | `string` | `"Standard"` | no |
| <a name="input_np_network_plugin"></a> [np\_network\_plugin](#input\_np\_network\_plugin) | Network plugin to use for networking | `string` | `"azure"` | no |
| <a name="input_np_network_policy"></a> [np\_network\_policy](#input\_np\_network\_policy) | Sets up network policy to be used with Azure CNI | `string` | `"azure"` | no |
| <a name="input_oms_enabled"></a> [oms\_enabled](#input\_oms\_enabled) | Is the OMS Agent Enabled? | `bool` | `false` | no |
| <a name="input_oms_log_analytics_workspace_id"></a> [oms\_log\_analytics\_workspace\_id](#input\_oms\_log\_analytics\_workspace\_id) | The ID of the Log Analytics Workspace which the OMS Agent should send data to | `string` | `null` | no |
| <a name="input_private_cluster_enabled"></a> [private\_cluster\_enabled](#input\_private\_cluster\_enabled) | Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? | `bool` | n/a | yes |
| <a name="input_private_dns_zone_id"></a> [private\_dns\_zone\_id](#input\_private\_dns\_zone\_id) | Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Specifies the Resource Group where the Managed Kubernetes Cluster should exist | `string` | n/a | yes |
| <a name="input_role_based_access_control"></a> [role\_based\_access\_control](#input\_role\_based\_access\_control) | An object with all the RBAC information | <pre>list(object(<br>    {<br>      enabled = bool<br>      azure_active_directory = object(<br>        {<br>          managed                = bool<br>          admin_group_object_ids = list(string)<br>          azure_rbac_enabled     = bool<br>        }<br>      )<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | The SKU Tier that should be used for this Kubernetes Cluster | `string` | `"Free"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aks"></a> [aks](#output\_aks) | n/a |
| <a name="output_container_resource_manager_id"></a> [container\_resource\_manager\_id](#output\_container\_resource\_manager\_id) | The ID of the Kubernetes Cluster Node Pool |
| <a name="output_fqdn"></a> [fqdn](#output\_fqdn) | The FQDN of the Azure Kubernetes Managed Cluster. |
| <a name="output_id"></a> [id](#output\_id) | The Kubernetes Managed Cluster ID. |
| <a name="output_kube_admin_config"></a> [kube\_admin\_config](#output\_kube\_admin\_config) | A kube\_admin\_config block |
| <a name="output_kube_admin_config_raw"></a> [kube\_admin\_config\_raw](#output\_kube\_admin\_config\_raw) | Raw Kubernetes config for the admin account to be used by kubectl and other compatible tools |
| <a name="output_kube_config"></a> [kube\_config](#output\_kube\_config) | A kube\_config block |
| <a name="output_kube_config_raw"></a> [kube\_config\_raw](#output\_kube\_config\_raw) | Raw Kubernetes config to be used by kubectl and other compatible tools |
| <a name="output_kubelet_identity"></a> [kubelet\_identity](#output\_kubelet\_identity) | A kubelet\_identity block |
| <a name="output_kubernetes_version"></a> [kubernetes\_version](#output\_kubernetes\_version) | Version of Kubernetes |
| <a name="output_node_resource_group"></a> [node\_resource\_group](#output\_node\_resource\_group) | The name of the Resource Group where the Kubernetes Nodes should exist |
| <a name="output_private_cluster_enabled"></a> [private\_cluster\_enabled](#output\_private\_cluster\_enabled) | True or False |
| <a name="output_private_dns_zone_id"></a> [private\_dns\_zone\_id](#output\_private\_dns\_zone\_id) | Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None |
| <a name="output_private_fqdn"></a> [private\_fqdn](#output\_private\_fqdn) | The FQDN for the Kubernetes Cluster when private link has been enabled |
| <a name="output_private_link_enabled"></a> [private\_link\_enabled](#output\_private\_link\_enabled) | True or False |
