variable "name" {
  description = "Specifies the name of the Managed Disk"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the Resource Group where the Managed Disk should exist"
  type        = string
}
variable "location" {
  description = "Specified the supported Azure location where the resource exists"
  type        = string
}
variable "create_option" {
  description = "The method to use when creating the managed disk. Possible values include: Import, Empty, Copy, FromImage, Restore"
  type        = string
  default     = "Empty"
}
variable "storage_account_type" {
  description = "The type of storage to use for the managed disk. Possible values are: Standard_LRS, Premium_LRS, StandardSSD_LRS or UltraSSD_LRS"
  type        = string
  default     = "Premium_LRS"
}
variable "disk_size_gb" {
  description = "Specifies the size of the managed disk to create in gigabytes"
  type        = number
  default     = 128
}
variable "zone" {
  description = "A collection containing the availability zone to allocate the Managed Disk in"
  type        = string
}
variable "disk_iops_read_write" {
  description = "The number of IOPS allowed for this disk; only settable for UltraSSD disks."
  type        = string
  default     = null
}
variable "caching" {
  description = "Specifies the caching requirements for this Data Disk. Possible values include None, ReadOnly and ReadWrite"
  type        = string
  default     = "None"
}
variable "lun" {
  description = "The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine"
  type        = number
  default     = 0
}
variable "vm_id" {
  description = "The ID of the Virtual Machine to which the Data Disk should be attached"
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
