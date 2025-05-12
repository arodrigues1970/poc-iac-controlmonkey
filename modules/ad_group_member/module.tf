resource "azuread_group_member" "group_member" {
  for_each         = toset(var.member_object_id_list)
  group_object_id  = var.group_object_id
  member_object_id = each.value
}
