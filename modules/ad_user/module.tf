resource "azuread_user" "user" {
  account_enabled         = var.account_enabled
  business_phones         = var.business_phones
  city                    = var.city
  company_name            = var.company_name
  country                 = var.country
  department              = var.department
  display_name            = var.display_name
  employee_id             = var.employee_id
  force_password_change   = var.force_password_change
  given_name              = var.given_name
  job_title               = var.job_title
  mail                    = var.mail
  mail_nickname           = var.mail_nickname
  manager_id              = var.manager_id
  mobile_phone            = var.mobile_phone
  office_location         = var.office_location
  onpremises_immutable_id = var.onpremises_immutable_id
  other_mails             = var.other_mails
  password                = var.password
  postal_code             = var.postal_code
  preferred_language      = var.preferred_language
  show_in_address_list    = var.show_in_address_list
  state                   = var.state
  street_address          = var.street_address
  surname                 = var.surname
  usage_location          = var.usage_location
  user_principal_name     = var.user_principal_name

  lifecycle {
    ignore_changes = [
      employee_id,
      force_password_change,
      manager_id
    ]
  }
}
