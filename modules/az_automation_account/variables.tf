variable "location" {
  description = "Specifies the supported Azure location where the resource exists"
  type        = string
}
variable "automation_name" {
  description = "Specifies the name of the Automation Account"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which the Automation Account is created"
  type        = string
}
variable "sku_name" {
  description = "The SKU name of the account"
  type        = string
  default     = "Basic"
}
variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}
variable "timeouts" {
  description = "Timeouts for certain actions"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

variable "cert_base64" {
  description = "Base64 encoded value of the certificate."
  type        = string
  default     = null
}

variable "cert_description" {
  description = "The description of this Automation Certificate."
  type        = string
  default     = null
}

variable "cert_name" {
  description = "Specifies the name of the Certificate"
  type        = string
  default     = null
}

variable "cert_exportable" {
  description = "The is exportable flag of the certificate."
  type        = bool
  default     = true
}

variable "cert_timeouts" {
  description = "Timeouts for certain actions"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}
variable "runbook_list" {
  description = "A list of all Runbooks"
  type = list(object(
    {
      name         = string
      log_verbose  = string
      log_progress = string
      description  = string
      runbook_type = string
      content      = string
    }
  ))
  default = []
}
variable "schedule_list" {
  description = "A list of all schedules"
  type = list(object(
    {
      description = string
      expiry_time = string
      frequency   = string
      interval    = string
      month_days  = set(number)
      name        = string
      start_time  = string
      timezone    = string
      week_days   = list(string)
      monthly_occurrence = list(object(
        {
          day        = string
          occurrence = string
        }
      ))
      timeouts = list(object(
        {
          create = string
          delete = string
          read   = string
          update = string
        }
      ))
    }
  ))
  default = []
}
variable "job_schedule_list" {
  description = "A list of all job schedules"
  type = list(object(
    {
      parameters    = map(string)
      run_on        = string
      runbook_name  = string
      schedule_name = string
      timeouts = list(object(
        {
          create = string
          delete = string
          read   = string
          update = string
        }
      ))
    }

  ))
  default = []
}

variable "redundancy" {
  description = "Will these schedules have redundancy?"
  type        = bool
  default     = false
}
