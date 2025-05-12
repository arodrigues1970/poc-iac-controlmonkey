resource_group_name        = "rg-ne-xyz-vm"
location                   = "North Europe"
storage_account_list = [
  {
    storage_name             = "stganexyzenv0test"
    storage_tier             = "Standard"
    storage_replication_type = "LRS"
    allow_blob_public_access = true
    min_tls                  = "TLS1_2"
    account_kind             = "StorageV2"
    container_list = [
      {
        name                  = "keyv"
        container_access_type = "container"
      },
      {
        name                  = "netw"
        container_access_type = "container"
      },
      {
        name                  = "tfstate"
        container_access_type = "container"
      }
    ]
  }
]
tags = {
  "ManagedBy" = "Terraform"
  "Sandbox" = "True"
  "StopStartVM" = "False"
}
