variable "name" {
  description = "The name of the Private DNS Zone"
  type        = string
}
variable "resource_group_name" {
  description = "Specifies the resource group where the resource exists"
  type        = string
}
variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
variable "soa_record" {
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
variable "private_dns_records_list" {
  description = "List of Private DNS Records"
  type = list(object(
    {
      record_type = string
      record_name = string
      ttl         = number
      records     = list(string)
    }
  ))
}
variable "vnet_link_list" {
  description = "List of Vnet"
  type = list(object(
    {
      name    = string
      vnet_id = string
    }
  ))
  default = []
}
