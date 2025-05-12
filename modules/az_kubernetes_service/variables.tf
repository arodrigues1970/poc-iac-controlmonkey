variable "name" {
  description = "The name of the Managed Kubernetes Cluster to create"
  type        = string
}
variable "location" {
  description = "The location where the Managed Kubernetes Cluster should be created"
  type        = string
}
variable "resource_group_name" {
  description = "Specifies the Resource Group where the Managed Kubernetes Cluster should exist"
  type        = string
}
variable "dns_prefix" {
  description = "DNS prefix specified when creating the managed cluster"
  type        = string
}
variable "private_cluster_enabled" {
  description = "Should this Kubernetes Cluster have its API server only exposed on internal IP addresses?"
  type        = bool
}
variable "node_resource_group" {
  description = "The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster"
  type        = string
}
variable "sku_tier" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster"
  type        = string
  default     = "Free"
}
variable "private_dns_zone_id" {
  description = "Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None"
  type        = string
}
variable "kubernetes_version" {
  description = "Version of Kubernetes specified when creating the AKS managed cluster"
  type        = string
}
variable "dnf_name" {
  description = "The name which should be used for the default Kubernetes Node Pool"
  type        = string
}
variable "dnf_node_count" {
  description = "The initial number of nodes which should exist in this Node Pool"
  type        = number
}
variable "dnf_vm_size" {
  description = "The size of the Virtual Machine"
  type        = string
}
variable "dnf_os_disk_size_gb" {
  description = "The size of the OS Disk which should be used for each agent in the Node Pool"
  type        = string
}
variable "dnf_os_disk_type" {
  description = "The type of disk which should be used for the Operating System"
  type        = string
  default     = "Managed"
}
variable "dnf_availability_zones" {
  description = "A list of Availability Zones across which the Node Pool should be spread"
  type        = list(string)
}
variable "dnf_vnet_subnet_id" {
  description = "The ID of a Subnet where the Kubernetes Node Pool should exist"
  type        = string
}
variable "np_network_plugin" {
  description = "Network plugin to use for networking"
  type        = string
  default     = "azure"
}
variable "np_network_policy" {
  description = "Sets up network policy to be used with Azure CNI"
  type        = string
  default     = "azure"
}
variable "np_load_balancer_sku" {
  description = "Specifies the SKU of the Load Balancer used for this Kubernetes Cluster"
  type        = string
  default     = "Standard"
}
variable "idt_type" {
  description = "The type of identity used for the managed cluster"
  type        = string
  default     = "SystemAssigned"
}
variable "idt_user_assigned_identity_id" {
  description = "The ID of a user assigned identity"
  type        = string
  default     = null
}
variable "oms_enabled" {
  description = "Is the OMS Agent Enabled?"
  type        = bool
  default     = false
}
variable "oms_log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace which the OMS Agent should send data to"
  type        = string
  default     = null
}
variable "node_pool_list" {
  description = "An object with all the information and parameters of a node pool"
  type        = any
  default     = {}
}
variable "role_based_access_control" {
  description = "An object with all the RBAC information"
  type = list(object(
    {
      enabled = bool
      azure_active_directory = object(
        {
          managed                = bool
          admin_group_object_ids = list(string)
          azure_rbac_enabled     = bool
        }
      )
    }
  ))
  default = []
}
variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
