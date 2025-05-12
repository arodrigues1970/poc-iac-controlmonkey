resource_group_name        = "rg-ne-xyz-vm"
storageaccount_name        = "stnexyzenv0test1"
location                   = "North Europe"
key_vault_list = [
  {
    name                        = "xyz-kv-dev-001"
    enabled_for_disk_encryption = false
    soft_delete_retention_days  = 90
    purge_protection_enabled    = false
    sku_name                    = "standard"
  }
]
tags = {
  "ManagedBy" = "Terraform"
  "Sandbox" = "True"
  "StopStartVM" = "False"
}
