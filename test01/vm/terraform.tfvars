resource_group_name        = "rg-ne-xyz-env0-agent"
resource_group_netw_name   = "rg-ne-networking"
storageaccount_name        = "stnexyzenv0test2"
location                   = "North Europe"
vnet_001_name              = "vnet-ne-sandbox-e0"
subnet_001_name            = "snet-ne-dev"
vm_name                    = "azlxyzdev001"
tags = {
  "ManagedBy" = "Terraform"
  "Sandbox" = "True"
  "StopStartVM" = "False"
}

vm_name = "vm-cm-0005"
resource_group_name = "rg-cm-vm-05"
location = "northeurope"
