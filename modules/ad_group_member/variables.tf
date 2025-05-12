variable "group_object_id" {
  description = "The object ID of the group you want to add the member to"
  type        = string
}

variable "member_object_id_list" {
  description = "List of object ID of the principal you want to add as a member to the group"
  type        = list(string)
}
