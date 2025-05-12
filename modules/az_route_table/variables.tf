variable "name" {
  description = "The name of the route table"
  type        = string
}
variable "location" {
  description = "The location"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}
variable "disable_bgp_route_propagation" {
  description = "Boolean flag which controls propagation of routes learned by BGP on that route table"
  type        = bool
}
variable "routes" {
  description = "Object with routes from the route table"
  type        = any
}
variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
variable "routes_subnets" {
  description = "Object with subnet from the route table"
  type        = any
}
