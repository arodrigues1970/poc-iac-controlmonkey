variable "location" {
  description = "Specifies the supported Azure Region where the Load Balancer should be created"
  type        = string
}

variable "name" {
  description = "Specifies the name of the Load Balancer"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group in which to create the Load Balancer"
  type        = string
}

variable "sku" {
  description = "The SKU of the Azure Load Balancer"
  type        = string
  default     = "Basic"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}

variable "frontend_ip_configuration" {
  description = "Frontend Ip Configuration block"
  type = set(object(
    {
      inbound_nat_rules             = set(string)
      load_balancer_rules           = set(string)
      name                          = string
      outbound_rules                = set(string)
      private_ip_address            = string
      private_ip_address_allocation = string
      private_ip_address_version    = string
      public_ip_address_id          = string
      public_ip_prefix_id           = string
      subnet_id                     = string
      zones                         = list(string)
    }
  ))
  default = []
}
