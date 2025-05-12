variable "location" {
  description = "Specifies the supported Azure location where the resource exists"
  type        = string
}

variable "name" {
  description = "Specifies the name of the Recovery Services Vault"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Recovery Services Vault"
  type        = string
}

variable "sku" {
  description = "The name of the resource group in which to create the Recovery Services Vault"
  type        = string
}

variable "soft_delete_enabled" {
  description = "Is soft delete enable for this Vault"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = null
}

variable "identity" {
  description = "An identity block "
  type = set(object(
    {
      type = string
    }
  ))
  default = []
}

variable "encryption" {
  description = "An encryption block "
  type = set(object(
    {
      key_id                            = string
      infrastructure_encryption_enabled = string
      use_system_assigned_identity      = string
    }
  ))
  default = []
}

variable "vm_policies" {
  description = "List of VM policies"
  type = set(object(
    {
      instant_restore_retention_days = number
      name                           = string
      timezone                       = string
      backup = set(object(
        {
          frequency = string
          time      = string
          weekdays  = set(string)
        }
      ))
      retention_daily = set(object(
        {
          count = number
        }
      ))
      retention_monthly = set(object(
        {
          count    = number
          weekdays = set(string)
          weeks    = set(string)
        }
      ))
      retention_weekly = set(object(
        {
          count    = number
          weekdays = set(string)
        }
      ))
      retention_yearly = set(object(
        {
          count    = number
          months   = set(string)
          weekdays = set(string)
          weeks    = set(string)
        }
      ))
    }
  ))
}
