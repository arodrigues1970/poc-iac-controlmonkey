variable "tenant_id" {
  description = "The name of the subscription id"
  type        = string
}
variable "subscription_id" {
  description = "The name of the subscription id"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "location" {
  description = "The Azure Region where the Resource Group should exist."
  type        = string
}
variable "tags" {
  description = "A mapping of tags"
  type        = map(string)
}
variable "storage_account_list" {
  description = "Storage Account List"
  type = list(object(
    {
      storage_name             = string
      storage_tier             = string
      storage_replication_type = string
      allow_blob_public_access = bool
      min_tls                  = string
      account_kind             = string
      container_list = list(object(
        {
          name                  = string
          container_access_type = string
        }
      ))
    }
  ))
}
