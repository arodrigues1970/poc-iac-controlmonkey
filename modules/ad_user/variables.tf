variable "account_enabled" {
  description = "Whether or not the account should be enabled."
  type        = bool
  default     = null
}

variable "city" {
  description = "The city in which the user is located."
  type        = string
  default     = null
}

variable "company_name" {
  description = "The company name which the user is associated. This property can be useful for describing the company that an external user comes from."
  type        = string
  default     = null
}

variable "country" {
  description = "The country/region in which the user is located"
  type        = string
  default     = null
}

variable "department" {
  description = "The name for the department in which the user works."
  type        = string
  default     = null
}

variable "display_name" {
  description = "The name to display in the address book for the user."
  type        = string
}

variable "force_password_change" {
  description = "Whether the user is forced to change the password during the next sign-in. Only takes effect when also changing the password"
  type        = bool
  default     = null
}

variable "given_name" {
  description = "The given name (first name) of the user"
  type        = string
  default     = null
}

variable "onpremises_immutable_id" {
  description = "The value used to associate an on-premise Active Directory user account with their Azure AD user object"
  type        = string
  default     = null
}

variable "job_title" {
  description = "The user’s job title."
  type        = string
  default     = null
}

variable "mail_nickname" {
  description = "The mail alias for the user. Defaults to the user name part of the user principal name (UPN)."
  type        = string
  default     = null
}

variable "mobile_phone" {
  description = "The primary cellular telephone number for the user."
  type        = string
  default     = null
}

variable "password" {
  description = "The password for the user."
  type        = string
  default     = null
}

variable "office_location" {
  description = "The office location in the user's place of business."
  type        = string
  default     = null
}

variable "postal_code" {
  description = "The postal code for the user's postal address."
  type        = string
  default     = null
}

variable "state" {
  description = "The state or province in the user's address."
  type        = string
  default     = null
}

variable "street_address" {
  description = "The street address of the user's place of business."
  type        = string
  default     = null
}

variable "surname" {
  description = "The user's surname (family name or last name)"
  type        = string
  default     = null
}

variable "usage_location" {
  description = "The usage location of the user"
  type        = string
  default     = null
}

variable "user_principal_name" {
  description = "The user principal name (UPN) of the user."
  type        = string
}

variable "manager_id" {
  description = "The object ID of the user's manager."
  type        = string
  default     = null
}

variable "show_in_address_list" {
  description = "Whether or not the Outlook global address list should include this user"
  type        = bool
  default     = null
}

variable "other_mails" {
  description = "A list of additional email addresses for the user"
  type        = list(string)
  default     = null
}

variable "mail" {
  description = "The SMTP address for the user"
  type        = string
  default     = null
}

variable "business_phones" {
  description = "A list of telephone numbers for the user. Only one number can be set for this property"
  type        = list(string)
  default     = null
}

variable "employee_id" {
  description = "The employee identifier assigned to the user by the organisation"
  type        = string
  default     = null
}

variable "preferred_language" {
  description = "The user's preferred language, in ISO 639-1 notation"
  type        = string
  default     = null
}
