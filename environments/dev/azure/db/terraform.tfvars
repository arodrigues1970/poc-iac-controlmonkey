resource_group_name        = "rg-ne-xyz-vm"
resource_group_netw_name   = "rg-ne-networking"
storageaccount_name        = "stnexyzenv0test1"
location                   = "North Europe"
vnet_001_name              = "vnet-ne-sandbox-e0"
subnet_001_name            = "snet-ne-dev"
postgresql_001 = {
  "name"                             = "xyzdevdb001"
  "administrator_login"              = null
  "administrator_login_password"     = null
  "sku_name"                         = "GP_Gen5_4"
  "db_version"                       = "11"
  "storage_mb"                       = 65536
  "backup_retention_days"            = 7
  "geo_redundant_backup_enabled"     = false
  "auto_grow_enabled"                = true
  "public_network_access_enabled"    = false
  "ssl_enforcement_enabled"          = true
  "ssl_minimal_tls_version_enforced" = "TLS1_2"
}
private_endpoint_001 = {
  name                               = null
  subnet_id                          = null
  psc_name                           = null
  psc_private_connection_resource_id = null
  psc_subresource_names              = ["postgresqlServer"]
  psc_is_manual_connection           = false
}
tags = {
  "ManagedBy" = "Terraform"
  "Sandbox" = "True"
  "StopStartVM" = "False"
}
