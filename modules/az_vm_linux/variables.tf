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
variable "script_file" {
  description = "Script that will run when the VM is created"
  type        = string
  default     = null
}
variable "rsv_name" {
  description = "Recovery Service Vault Name"
  type        = string
  default     = null
}
variable "enable_policy" {
  description = "Enable policy?"
  type        = bool
  default     = false
}
variable "policy_id" {
  description = "RSV Policy ID"
  type        = string
  default     = null
}
variable "tags" {
  description = ""
  type        = map(string)
  default     = {}
}
