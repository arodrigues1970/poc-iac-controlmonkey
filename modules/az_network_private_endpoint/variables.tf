variable "name" {
  description = "Specifies the Name of the Private Endpoint"
  type        = string
}
variable "location" {
  description = "The supported Azure location where the resource exists"
  type        = string
}
variable "resource_group_name" {
  description = "Specifies the Name of the Resource Group within which the Private Endpoint should exist"
  type        = string
}
variable "subnet_id" {
  description = "The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint"
  type        = string
}
variable "psc_name" {
  description = "Specifies the Name of the Private Service Connection"
  type        = string
}
variable "psc_private_connection_resource_id" {
  description = "The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to"
  type        = string
}
variable "psc_subresource_names" {
  description = "A list of subresource names which the Private Endpoint is able to connect to"
  type        = list(string)
}
variable "psc_is_manual_connection" {
  description = "Does the Private Endpoint require Manual Approval from the remote resource owner?"
  type        = string
}
variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
