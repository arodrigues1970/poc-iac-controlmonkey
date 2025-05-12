variable "name" {
  description = "Specifies the name of the PostgreSQL Server"
  type        = string
}
variable "location" {
  description = "Specifies the supported Azure location where the resource exists"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the PostgreSQL Server"
  type        = string
}
variable "administrator_login" {
  description = "The Administrator Login for the PostgreSQL Server"
  type        = string
}
variable "administrator_login_password" {
  description = "The Password"
  type        = string
}
variable "sku_name" {
  description = " Specifies the SKU Name for this PostgreSQL Server"
  type        = string
}
variable "db_version" {
  description = "Specifies the version of PostgreSQL to use"
  type        = string
}
variable "storage_mb" {
  description = "Max storage allowed for a server"
  type        = number
}
variable "backup_retention_days" {
  description = "Backup retention days for the server"
  type        = number
}
variable "geo_redundant_backup_enabled" {
  description = "Turn Geo-redundant server backups on/off"
  type        = bool
  default     = true
}
variable "auto_grow_enabled" {
  description = "Enable/Disable auto-growing of the storage"
  type        = bool
  default     = true
}
variable "public_network_access_enabled" {
  description = "Whether or not public network access is allowed for this server"
  type        = bool
  default     = false
}
variable "ssl_enforcement_enabled" {
  description = "Specifies if SSL should be enforced on connections"
  type        = bool
  default     = true
}
variable "ssl_minimal_tls_version_enforced" {
  description = "The mimimun TLS version to support on the sever"
  type        = string
}
variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
variable "threat_detection_policy" {
  description = "Threat detection policy configuration, known in the API as Server Security Alerts Policy"
  type = set(object({
    enabled                    = bool
    disabled_alerts            = list(string)
    email_account_admins       = bool
    email_addresses            = list(string)
    retention_days             = number
    storage_account_access_key = string
    storage_endpoint           = string
  }))
  default = []
}
