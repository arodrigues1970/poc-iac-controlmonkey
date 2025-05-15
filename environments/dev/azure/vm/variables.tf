
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "location" {
  description = "The Azure Region where the Resource Group should exist."
  type        = string
}
variable "vm_name" {
  description = "The Azure Region where the Resource Group should exist."
  type        = string
}
variable "tags" {
  description = "A mapping of tags"
  type        = map(string)
}
variable "vnet_001_name" {
  description = "The name of the virtual network"
  type        = string
}
variable "subnet_001_name" {
  description = "The name of the subnet"
  type        = string
}
