variable "tenant_id" {
  description = "The name of the Tenant id"
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
variable "storageaccount_name" {
  description = "The name of the storage account"
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
variable "key_vault_list" {
  description = "Key Vault List"
  type = list(object(
    {
      name                        = string
      enabled_for_disk_encryption = bool
      soft_delete_retention_days  = number
      purge_protection_enabled    = bool
      sku_name                    = string
    }
  ))
}
