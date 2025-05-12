variable "capacity" {
  description = "Specifies the capacity"
  type        = number
  default     = null
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists"
  type        = string
}

variable "name" {
  description = "Specifies the name of the ServiceBus Namespace resource"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the namespace"
  type        = string
}

variable "sku" {
  description = "Defines which tier to use. Options are basic, standard or premium"
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = null
}

variable "zone_redundant" {
  description = "Whether or not this resource is zone redundant."
  type        = bool
  default     = null
}
