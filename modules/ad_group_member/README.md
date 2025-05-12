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
| [azuread_group_member.group_member](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_object_id"></a> [group\_object\_id](#input\_group\_object\_id) | The object ID of the group you want to add the member to | `string` | n/a | yes |
| <a name="input_member_object_id_list"></a> [member\_object\_id\_list](#input\_member\_object\_id\_list) | List of object ID of the principal you want to add as a member to the group | `list(string)` | n/a | yes |

## Outputs

No outputs.
