variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "resource_group_netw_name" {
  description = "The name of the Netw resource group"
  type        = string
}
variable "resource_group_devops_name" {
  description = "The name of the DevOps resource group"
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
variable "vnet_001_name" {
  description = "The name of the virtual network"
  type        = string
}
variable "subnet_001_name" {
  description = "The name of the subnet"
  type        = string
}
variable "postgresql_001" {
  description = "An object with all PostgreSQL settings and parameters"
  type = object({
    name                             = string
    administrator_login              = string
    administrator_login_password     = string
    sku_name                         = string
    db_version                       = string
    storage_mb                       = number
    backup_retention_days            = number
    geo_redundant_backup_enabled     = bool
    auto_grow_enabled                = bool
    public_network_access_enabled    = bool
    ssl_enforcement_enabled          = bool
    ssl_minimal_tls_version_enforced = string
  })
}
variable "private_endpoint_001" {
  description = "An object with all Private Endpoint settings and parameters"
  type = object({
    name                               = string
    subnet_id                          = string
    psc_name                           = string
    psc_private_connection_resource_id = string
    psc_subresource_names              = list(string)
    psc_is_manual_connection           = bool
  })
}
variable "keyvault_001_name" {
  description = "The name of the Key Vault"
  type        = string
}
variable "secret_linuxuseradmindb" {
  description = "The name of the Key Vault Secret"
  type        = string
}
variable "secret_linuxpassadmindb" {
  description = "The name of the Key Vault Secret"
  type        = string
}
