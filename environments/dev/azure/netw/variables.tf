variable "subscription_id" {
  description = "The subscription id of Azure"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "storageaccount_name" {
  description = "The name of the storage account"
  type        = string
}
variable "location" {
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
variable "vnet_001_address_space" {
  description = "The address space that is used the virtual network"
  type        = list(string)
}
variable "vnet_001_dns_servers" {
  description = "List of IP addresses of DNS servers"
  type        = list(string)
}
variable "nsg_001_name" {
  description = "The name of the network security group"
  type        = string
}
variable "private_dns_zone_001_name" {
  description = "The name of the Private DNS Zone"
  type        = string
}
variable "private_dns_zone_001_soa_record" {
  description = "Soa Record"
  type = list(object(
    {
      email        = string
      expire_time  = number
      minimum_ttl  = number
      refresh_time = number
      retry_time   = number
      ttl          = number
      tags         = map(string)
    }
  ))
  default = []
}
variable "private_dns_zone_001_records_list" {
  description = "List of Private DNS Records"
  type = list(object(
    {
      record_type = string
      record_name = string
      ttl         = number
      records     = list(string)
    }
  ))
  default = []
}
