variable "vm_info" {
  description = "Object with all VM configuration parameters"
  type        = any
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "location" {
  description = "Specifies the supported Azure location where the resource exists"
  type        = string
}
variable "tags" {
  description = ""
  type        = map(string)
  default     = {}
}
