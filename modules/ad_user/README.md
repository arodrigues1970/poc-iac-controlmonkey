## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_user.user](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_enabled"></a> [account\_enabled](#input\_account\_enabled) | Whether or not the account should be enabled. | `bool` | `null` | no |
| <a name="input_business_phones"></a> [business\_phones](#input\_business\_phones) | A list of telephone numbers for the user. Only one number can be set for this property | `list(string)` | `null` | no |
| <a name="input_city"></a> [city](#input\_city) | The city in which the user is located. | `string` | `null` | no |
| <a name="input_company_name"></a> [company\_name](#input\_company\_name) | The company name which the user is associated. This property can be useful for describing the company that an external user comes from. | `string` | `null` | no |
| <a name="input_country"></a> [country](#input\_country) | The country/region in which the user is located | `string` | `null` | no |
| <a name="input_department"></a> [department](#input\_department) | The name for the department in which the user works. | `string` | `null` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | The name to display in the address book for the user. | `string` | n/a | yes |
| <a name="input_employee_id"></a> [employee\_id](#input\_employee\_id) | The employee identifier assigned to the user by the organisation | `string` | `null` | no |
| <a name="input_force_password_change"></a> [force\_password\_change](#input\_force\_password\_change) | Whether the user is forced to change the password during the next sign-in. Only takes effect when also changing the password | `bool` | `null` | no |
| <a name="input_given_name"></a> [given\_name](#input\_given\_name) | The given name (first name) of the user | `string` | `null` | no |
| <a name="input_job_title"></a> [job\_title](#input\_job\_title) | The user’s job title. | `string` | `null` | no |
| <a name="input_mail"></a> [mail](#input\_mail) | The SMTP address for the user | `string` | `null` | no |
| <a name="input_mail_nickname"></a> [mail\_nickname](#input\_mail\_nickname) | The mail alias for the user. Defaults to the user name part of the user principal name (UPN). | `string` | `null` | no |
| <a name="input_manager_id"></a> [manager\_id](#input\_manager\_id) | The object ID of the user's manager. | `string` | `null` | no |
| <a name="input_mobile_phone"></a> [mobile\_phone](#input\_mobile\_phone) | The primary cellular telephone number for the user. | `string` | `null` | no |
| <a name="input_office_location"></a> [office\_location](#input\_office\_location) | The office location in the user's place of business. | `string` | `null` | no |
| <a name="input_onpremises_immutable_id"></a> [onpremises\_immutable\_id](#input\_onpremises\_immutable\_id) | The value used to associate an on-premise Active Directory user account with their Azure AD user object | `string` | `null` | no |
| <a name="input_other_mails"></a> [other\_mails](#input\_other\_mails) | A list of additional email addresses for the user | `list(string)` | `null` | no |
| <a name="input_password"></a> [password](#input\_password) | The password for the user. | `string` | `null` | no |
| <a name="input_postal_code"></a> [postal\_code](#input\_postal\_code) | The postal code for the user's postal address. | `string` | `null` | no |
| <a name="input_preferred_language"></a> [preferred\_language](#input\_preferred\_language) | The user's preferred language, in ISO 639-1 notation | `string` | `null` | no |
| <a name="input_show_in_address_list"></a> [show\_in\_address\_list](#input\_show\_in\_address\_list) | Whether or not the Outlook global address list should include this user | `bool` | `null` | no |
| <a name="input_state"></a> [state](#input\_state) | The state or province in the user's address. | `string` | `null` | no |
| <a name="input_street_address"></a> [street\_address](#input\_street\_address) | The street address of the user's place of business. | `string` | `null` | no |
| <a name="input_surname"></a> [surname](#input\_surname) | The user's surname (family name or last name) | `string` | `null` | no |
| <a name="input_usage_location"></a> [usage\_location](#input\_usage\_location) | The usage location of the user | `string` | `null` | no |
| <a name="input_user_principal_name"></a> [user\_principal\_name](#input\_user\_principal\_name) | The user principal name (UPN) of the user. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_creation_type"></a> [creation\_type](#output\_creation\_type) | Indicates whether the user account was created as a regular school or work account (null), an external account (Invitation), a local account for an Azure Active Directory B2C tenant (LocalAccount) or self-service sign-up using email verification (EmailVerified). |
| <a name="output_external_user_state"></a> [external\_user\_state](#output\_external\_user\_state) | For an external user invited to the tenant, this property represents the invited user's invitation status. Possible values are PendingAcceptance or Accepted. |
| <a name="output_im_addresses"></a> [im\_addresses](#output\_im\_addresses) | A list of instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user. |
| <a name="output_object_id"></a> [object\_id](#output\_object\_id) | The object ID of the user. |
| <a name="output_onpremises_distinguished_name"></a> [onpremises\_distinguished\_name](#output\_onpremises\_distinguished\_name) | The on-premises distinguished name (DN) of the user, synchronised from the on-premises directory when Azure AD Connect is used. |
| <a name="output_onpremises_domain_name"></a> [onpremises\_domain\_name](#output\_onpremises\_domain\_name) | The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used. |
| <a name="output_onpremises_sam_account_name"></a> [onpremises\_sam\_account\_name](#output\_onpremises\_sam\_account\_name) | The on-premise SAM account name of the user. |
| <a name="output_onpremises_security_identifier"></a> [onpremises\_security\_identifier](#output\_onpremises\_security\_identifier) | The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used. |
| <a name="output_onpremises_sync_enabled"></a> [onpremises\_sync\_enabled](#output\_onpremises\_sync\_enabled) | Whether this user is synchronised from an on-premises directory (true), no longer synchronised (false), or has never been synchronised (null). |
| <a name="output_onpremises_user_principal_name"></a> [onpremises\_user\_principal\_name](#output\_onpremises\_user\_principal\_name) | The on-premise user principal name of the user. |
| <a name="output_proxy_addresses"></a> [proxy\_addresses](#output\_proxy\_addresses) | List of email addresses for the user that direct to the same mailbox. |
| <a name="output_user_type"></a> [user\_type](#output\_user\_type) | The user type in the directory. Possible values are Guest or Member. |
