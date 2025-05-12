variable "description" {
  description = "The description for the group."
  type        = string
  default     = null
}

variable "display_name" {
  description = "The display name for the group"
  type        = string
}

variable "members" {
  description = "A set of members who should be present in this group"
  type        = set(string)
  default     = null
}

variable "owners" {
  description = "A set of object IDs of principals that will be granted ownership of the group"
  type        = set(string)
  default     = null
}

variable "prevent_duplicate_names" {
  description = "If true, will return an error if an existing group is found with the same name"
  type        = bool
  default     = null
}

variable "mail_nickname" {
  description = "The mail alias for the group, unique in the organisation. Required for mail-enabled groups"
  type        = string
  default     = null
}

variable "mail_enabled" {
  description = "Whether the group is a mail enabled, with a shared group mailbox"
  type        = bool
  default     = null
}

variable "security_enabled" {
  description = "Whether the group is a security group for controlling access to in-app resources"
  type        = bool
  default     = null
}

variable "assignable_to_role" {
  description = "Indicates whether this group can be assigned to an Azure Active Directory role"
  type        = bool
  default     = null
}

variable "types" {
  description = "A set of group types to configure for the group"
  type        = set(string)
  default     = null
}

variable "provisioning_options" {
  description = "A set of provisioning options for a Microsoft 365 group"
  type        = set(string)
  default     = null
}

variable "behaviors" {
  description = "A set of behaviors for a Microsoft 365 group"
  type        = set(string)
  default     = null
}
