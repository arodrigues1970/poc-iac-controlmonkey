variable "nic_name" {
  description = "The name of the Network Interface"
  type        = string
}
variable "location" {
  description = "The location where the Network Interface should exist"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the Resource Group in which to create the Network Interface"
  type        = string
}
variable "ip_config_name" {
  description = "A name used for this IP Configuration"
  type        = string
  default     = "internal"
}
variable "subnet_id" {
  description = "The ID of the Subnet where this Network Interface should be located in"
  type        = string
}
variable "ip_allocation" {
  description = "The allocation method used for the Private IP Address. Possible values are Dynamic and Static"
  type        = string
  default     = "Dynamic"
}
variable "private_ip_address" {
  description = "The Static IP Address which should be used"
  type        = string
  default     = null
}
variable "dns_servers" {
  description = "A list of IP Addresses defining the DNS Servers which should be used for this Network Interface"
  type        = list(string)
}
variable "enable_ip_forwarding" {
  description = "Should IP Forwarding be enabled?"
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
