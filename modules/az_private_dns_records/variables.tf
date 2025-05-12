variable "record_type" {
  type        = string
  description = "Type of DNS record to be created (TXT|SRV|PTR|NS|MX|CNAME|CAA|AAAA|A|)"
}

variable "record_name" {
  type        = string
  description = "(Required) The name of the DNS Record."
}

variable "zone_name" {
  type        = string
  description = "(Required) Specifies the DNS Zone where the DNS Zone (parent resource) exists."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) Specifies the resource group where the resource exists."
}

variable "ttl" {
  type        = string
  description = "(Required) The Time To Live (TTL) of the DNS record in seconds."
}

variable "records" {
  type        = any
  description = "(Required) A list of values that make up the record."
}

variable "tags_records" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the resource."
}
