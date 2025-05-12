variable "name" {
  description = "The name of the security rule"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the Network Security Rule"
  type        = string
}
variable "nsg_name" {
  description = "The name of the Network Security Group that we want to attach the rule to"
  type        = string
}
variable "description" {
  description = "A description for this rule"
  type        = string
  default     = null
  validation {
    condition     = length(coalesce(var.description, 0)) <= 140
    error_message = "Restricted to 140 characters."
  }
}
variable "priority" {
  description = "Specifies the priority of the rule"
  type        = number
}
variable "direction" {
  description = "The direction specifies if rule will be evaluated on incoming or outgoing traffic"
  type        = string
  validation {
    condition     = contains(["Inbound", "Outbound"], var.direction)
    error_message = "Valid values for variable: direction are (Inbound, Outbound)."
  }
}
variable "access" {
  description = "Specifies whether network traffic is allowed or denied"
  type        = string
  validation {
    condition     = contains(["Allow", "Deny"], var.access)
    error_message = "Valid values for variable: access are (Allow, Deny)."
  }
}
variable "protocol" {
  description = "Network protocol this rule applies to"
  type        = string
  validation {
    condition     = contains(["Tcp", "Udp", "Icmp", "Esp", "Ah", "*"], var.protocol)
    error_message = "Valid values for variable: protocol are (Tcp, Udp, Icmp, Esp, Ah or *)."
  }
}
variable "source_port_range" {
  description = "Source Port or Range"
  type        = string
}
variable "destination_port_range" {
  description = " Destination Port or Range"
  type        = string
}
variable "source_address_prefix" {
  description = "CIDR or source IP range or * to match any IP"
  type        = string
  default     = "*"
}
variable "destination_address_prefix" {
  description = "CIDR or destination IP range or * to match any IP. Tags such as ‘VirtualNetwork’, ‘AzureLoadBalancer’ and ‘Internet’ can also be used"
  type        = string
  default     = "*"
}
variable "source_port_ranges" {
  description = "List of source ports or port ranges"
  type        = list(string)
  default     = null
}
variable "destination_port_ranges" {
  description = "List of destination ports or port ranges"
  type        = list(string)
  default     = null
}
variable "source_application_security_group_ids" {
  description = "A List of source Application Security Group ID's"
  type        = list(string)
  default     = null
}
variable "destination_application_security_group_ids" {
  description = "A List of destination Application Security Group ID's"
  type        = list(string)
  default     = null
}
variable "source_address_prefixes" {
  description = "List of source address prefixes"
  type        = list(string)
  default     = null
}
variable "destination_address_prefixes" {
  description = "List of destination address prefixes"
  type        = list(string)
  default     = null
}
