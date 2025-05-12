resource "azuread_group" "group" {
  assignable_to_role      = var.assignable_to_role
  behaviors               = var.behaviors
  description             = var.description
  display_name            = var.display_name
  mail_enabled            = var.mail_enabled
  mail_nickname           = var.mail_nickname
  members                 = var.members
  owners                  = var.owners
  prevent_duplicate_names = var.prevent_duplicate_names
  provisioning_options    = var.provisioning_options
  security_enabled        = var.security_enabled
  types                   = var.types

  lifecycle {
    ignore_changes = [
      description,
      behaviors,
      mail_nickname
    ]
  }
}
