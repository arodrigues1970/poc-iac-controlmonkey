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
| [azuread_group.group](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignable_to_role"></a> [assignable\_to\_role](#input\_assignable\_to\_role) | Indicates whether this group can be assigned to an Azure Active Directory role | `bool` | `null` | no |
| <a name="input_behaviors"></a> [behaviors](#input\_behaviors) | A set of behaviors for a Microsoft 365 group | `set(string)` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | The description for the group. | `string` | `null` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | The display name for the group | `string` | n/a | yes |
| <a name="input_mail_enabled"></a> [mail\_enabled](#input\_mail\_enabled) | Whether the group is a mail enabled, with a shared group mailbox | `bool` | `null` | no |
| <a name="input_mail_nickname"></a> [mail\_nickname](#input\_mail\_nickname) | The mail alias for the group, unique in the organisation. Required for mail-enabled groups | `string` | `null` | no |
| <a name="input_members"></a> [members](#input\_members) | A set of members who should be present in this group | `set(string)` | `null` | no |
| <a name="input_owners"></a> [owners](#input\_owners) | A set of object IDs of principals that will be granted ownership of the group | `set(string)` | `null` | no |
| <a name="input_prevent_duplicate_names"></a> [prevent\_duplicate\_names](#input\_prevent\_duplicate\_names) | If true, will return an error if an existing group is found with the same name | `bool` | `null` | no |
| <a name="input_provisioning_options"></a> [provisioning\_options](#input\_provisioning\_options) | A set of provisioning options for a Microsoft 365 group | `set(string)` | `null` | no |
| <a name="input_security_enabled"></a> [security\_enabled](#input\_security\_enabled) | Whether the group is a security group for controlling access to in-app resources | `bool` | `null` | no |
| <a name="input_types"></a> [types](#input\_types) | A set of group types to configure for the group | `set(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_mail"></a> [mail](#output\_mail) | The SMTP address for the group. |
| <a name="output_object_id"></a> [object\_id](#output\_object\_id) | The object ID of the group. |
| <a name="output_onpremises_domain_name"></a> [onpremises\_domain\_name](#output\_onpremises\_domain\_name) | The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used. |
| <a name="output_onpremises_netbios_name"></a> [onpremises\_netbios\_name](#output\_onpremises\_netbios\_name) | The on-premises NetBIOS name, synchronised from the on-premises directory when Azure AD Connect is used. |
| <a name="output_onpremises_sam_account_name"></a> [onpremises\_sam\_account\_name](#output\_onpremises\_sam\_account\_name) | The on-premises SAM account name, synchronised from the on-premises directory when Azure AD Connect is used. |
| <a name="output_onpremises_security_identifier"></a> [onpremises\_security\_identifier](#output\_onpremises\_security\_identifier) | The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used. |
| <a name="output_onpremises_sync_enabled"></a> [onpremises\_sync\_enabled](#output\_onpremises\_sync\_enabled) | Whether this group is synchronised from an on-premises directory (true), no longer synchronised (false), or has never been synchronised (null). |
| <a name="output_preferred_language"></a> [preferred\_language](#output\_preferred\_language) | The preferred language for a Microsoft 365 group, in ISO 639-1 notation. |
| <a name="output_proxy_addresses"></a> [proxy\_addresses](#output\_proxy\_addresses) | List of email addresses for the group that direct to the same group mailbox. |
