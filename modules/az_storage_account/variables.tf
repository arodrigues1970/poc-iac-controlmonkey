variable "storage_name" {
  description = "Specifies the name of the storage account"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the storage account"
  type        = string
}
variable "location" {
  description = "Specifies the supported Azure location where the resource exists"
  type        = string
}
variable "storage_tier" {
  description = "Defines the Tier to use for this storage account"
  type        = string
}
variable "storage_replication_type" {
  description = "Defines the type of replication to use for this storage account"
  type        = string
}
variable "enable_https_traffic_only" {
  description = "Boolean flag which forces HTTPS if enabled"
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}
variable "container_list" {
  description = "Container list"
  type = list(object(
    {
      name                  = string
      container_access_type = string
    }
  ))
}
variable "allow_blob_public_access" {
  type    = bool
  default = false
}
variable "min_tls" {
  type    = string
  default = "TLS1_2"
}
variable "account_kind" {
  type    = string
  default = "StorageV2"
}
variable "static_website" {
  type = set(object(
    {
      index_document     = string
      error_404_document = string
    }
  ))
  default = []
}
