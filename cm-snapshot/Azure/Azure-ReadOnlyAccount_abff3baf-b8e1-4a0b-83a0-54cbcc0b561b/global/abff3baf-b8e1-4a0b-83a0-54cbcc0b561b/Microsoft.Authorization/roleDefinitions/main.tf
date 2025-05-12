terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}


variable "scope" {
  type    = string
  default = "/providers/Microsoft.Management/managementGroups/e0ea4813-1b36-40c9-9fd2-438357c5055f"
}

resource "azurerm_role_definition" "BDSO_Dms_Custom_Role_For_VM" {
  name  = "BDSO Dms Custom Role For VM"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Storage/storageAccounts/read", "Microsoft.Storage/storageAccounts/listkeys/action", "Microsoft.Storage/storageAccounts/blobServices/read", "Microsoft.Storage/storageAccounts/blobServices/write", "Microsoft.Storage/storageAccounts/blobServices/containers/read", "Microsoft.SqlVirtualMachine/sqlVirtualMachines/read", "Microsoft.SqlVirtualMachine/sqlVirtualMachines/write", "Microsoft.DataMigration/locations/operationResults/read", "Microsoft.DataMigration/locations/operationStatuses/read", "Microsoft.DataMigration/locations/sqlMigrationServiceOperationResults/read", "Microsoft.DataMigration/databaseMigrations/write", "Microsoft.DataMigration/databaseMigrations/read", "Microsoft.DataMigration/databaseMigrations/delete", "Microsoft.DataMigration/databaseMigrations/cancel/action", "Microsoft.DataMigration/databaseMigrations/cutover/action", "Microsoft.DataMigration/sqlMigrationServices/write", "Microsoft.DataMigration/sqlMigrationServices/delete", "Microsoft.DataMigration/sqlMigrationServices/read", "Microsoft.DataMigration/sqlMigrationServices/listAuthKeys/action", "Microsoft.DataMigration/sqlMigrationServices/regenerateAuthKeys/action", "Microsoft.DataMigration/sqlMigrationServices/deleteNode/action", "Microsoft.DataMigration/sqlMigrationServices/listMonitoringData/action", "Microsoft.DataMigration/sqlMigrationServices/listMigrations/read", "Microsoft.DataMigration/sqlMigrationServices/MonitoringData/read", "Microsoft.DataMigration/SqlMigrationServices/tasks/read", "Microsoft.DataMigration/SqlMigrationServices/tasks/write", "Microsoft.DataMigration/SqlMigrationServices/tasks/delete"]
  }
  description = "[BDSO] Custo Role to MIgrate Sql Server on Azure vms"
}

resource "azurerm_role_definition" "BDSO_MySQL_Reader" {
  name  = "BDSO MySQL Reader"
  scope = var.scope
  permissions {
    actions = ["Microsoft.DBforMySQL/*/read", "Microsoft.Insights/MetricDefinitions/Read", "Microsoft.Insights/Metrics/Read"]
  }
  description = "[BDSO] Read permissions on MySQL services"
}

resource "azurerm_role_definition" "BDSO_Cognitive_Services_Custom_Vision_Contributor_and_Keys" {
  name  = "BDSO Cognitive Services Custom Vision Contributor and Keys"
  scope = var.scope
  permissions {
    data_actions = ["Microsoft.CognitiveServices/accounts/CustomVision/*"]
    actions      = ["Microsoft.CognitiveServices/*/read", "Microsoft.CognitiveServices/accounts/listKeys/action"]
  }
  description = "[BDSO] Cognitive Services Custom Vision Contributor + List Keys"
}

resource "azurerm_role_definition" "BDSO_Resource_Group_Contributor" {
  name  = "BDSO Resource Group Contributor"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Resources/subscriptions/resourceGroups/*"]
  }
  description = "[BDSO] All operations on Resource Groups"
}

resource "azurerm_role_definition" "BDSO_Recovery_Services_vaults_SQL_Backup" {
  name  = "BDSO Recovery Services vaults SQL Backup"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Network/privateEndpoints/*", "Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/networkInterfaces/read", "Microsoft.Network/privateDnsZones/A/*", "Microsoft.Network/privateDnsZones/virtualNetworkLinks/read"]
  }
  description = "[BDSO] Set of actions needed by Recovery Services vaults to perform SQL Backups via Private Endpoint"
}

resource "azurerm_role_definition" "BDSO_Dms_Custom_Role_For_SqlDB" {
  name  = "BDSO Dms Custom Role For SqlDB"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Sql/servers/read", "Microsoft.Sql/servers/write", "Microsoft.Sql/servers/databases/read", "Microsoft.Sql/servers/databases/write", "Microsoft.Sql/servers/databases/delete", "Microsoft.DataMigration/locations/operationResults/read", "Microsoft.DataMigration/locations/operationStatuses/read", "Microsoft.DataMigration/locations/sqlMigrationServiceOperationResults/read", "Microsoft.DataMigration/databaseMigrations/write", "Microsoft.DataMigration/databaseMigrations/read", "Microsoft.DataMigration/databaseMigrations/delete", "Microsoft.DataMigration/databaseMigrations/cancel/action", "Microsoft.DataMigration/sqlMigrationServices/write", "Microsoft.DataMigration/sqlMigrationServices/delete", "Microsoft.DataMigration/sqlMigrationServices/read", "Microsoft.DataMigration/sqlMigrationServices/listAuthKeys/action", "Microsoft.DataMigration/sqlMigrationServices/regenerateAuthKeys/action", "Microsoft.DataMigration/sqlMigrationServices/deleteNode/action", "Microsoft.DataMigration/sqlMigrationServices/listMonitoringData/action", "Microsoft.DataMigration/sqlMigrationServices/listMigrations/read", "Microsoft.DataMigration/sqlMigrationServices/MonitoringData/read", "Microsoft.DataMigration/SqlMigrationServices/tasks/read", "Microsoft.DataMigration/SqlMigrationServices/tasks/write", "Microsoft.DataMigration/SqlMigrationServices/tasks/delete"]
  }
  description = "[BDSO] Custom Role to Migrate Azure SQL Database"
}

resource "azurerm_role_definition" "BDSO_SecOps" {
  name  = "BDSO SecOps"
  scope = var.scope
  permissions {
    actions = ["*/read", "Microsoft.Compute/virtualMachines/deallocate/action", "Microsoft.Compute/virtualMachines/powerOff/action", "Microsoft.Compute/virtualMachines/start/action", "Microsoft.Compute/virtualMachines/restart/action"]
  }
  description = "[BDSO] Read all, start/stop VMs"
}

resource "azurerm_role_definition" "BDSO_SQL_Restore" {
  name  = "BDSO SQL Restore"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Compute/virtualMachines/write", "Microsoft.Compute/virtualMachines/read"]
  }
  description = "[BDSO] Restore operations on SQL services"
}

resource "azurerm_role_definition" "BDSO_Virtual_Machine_Power" {
  name  = "BDSO Virtual Machine Power"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Compute/virtualMachines/read", "Microsoft.Compute/virtualMachines/start/action", "Microsoft.Compute/virtualMachines/powerOff/action", "Microsoft.Compute/virtualMachines/restart/action", "Microsoft.Compute/virtualMachines/deallocate/action"]
  }
  description = "[BDSO] Start and Stop Virtual Machines"
}

resource "azurerm_role_definition" "BDSO_SQL_Reader" {
  name  = "BDSO SQL Reader"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Compute/virtualMachines/*/read", "Microsoft.Sql/*/read", "Microsoft.SqlVirtualMachine/*/read"]
  }
  description = "[BDSO] Read Operations on SQL services"
}

resource "azurerm_role_definition" "BDSO_SysAdmin" {
  name  = "BDSO SysAdmin"
  scope = var.scope
  permissions {
    actions     = ["*/read", "Microsoft.SerialConsole/serialPorts/connect/action", "Microsoft.Compute/virtualMachines/*", "Microsoft.Storage/storageAccounts/listKeys/action", "Microsoft.Storage/storageAccounts/read", "Microsoft.KeyVault/vaults/*/read"]
    not_actions = ["Microsoft.Compute/virtualMachines/write", "Microsoft.Compute/virtualMachines/delete", "Microsoft.Compute/virtualMachines/reapply/action", "Microsoft.Compute/virtualMachines/redeploy/action", "Microsoft.Compute/virtualMachines/generalize/action", "Microsoft.Compute/virtualMachines/capture/action", "Microsoft.Compute/virtualMachines/convertToManagedDisks/action", "Microsoft.Compute/virtualMachines/reimage/action", "Microsoft.Compute/virtualMachines/extensions/write", "Microsoft.Compute/virtualMachines/extensions/delete", "Microsoft.Compute/virtualMachines/providers/Microsoft.Insights/diagnosticSettings/write"]
  }
  description = "[BDSO] Read all, start/stop VMs, serial console"
}

resource "azurerm_role_definition" "BDSO_Azure_Admin" {
  name  = "BDSO Azure Admin"
  scope = var.scope
  permissions {
    actions     = ["*"]
    not_actions = ["Microsoft.Authorization/elevateAccess/Action", "Microsoft.Authorization/roleAssignments/Delete", "Microsoft.Authorization/roleAssignments/Write"]
  }
  description = "[BDSO] All except elevateAccess and role assigments write/delete"
}

resource "azurerm_role_definition" "BDSO_Network_Reader" {
  name  = "BDSO Network Reader"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Insights/alertRules/*", "Microsoft.Network/*/read", "Microsoft.ResourceHealth/availabilityStatuses/read", "Microsoft.Resources/subscriptions/resourceGroups/read"]
  }
  description = "[BDSO] Based in the role Network Contributor, but read only."
}

resource "azurerm_role_definition" "BDSO_AzureML_Compute_Operator" {
  name  = "BDSO AzureML Compute Operator"
  scope = var.scope
  permissions {
    actions = ["Microsoft.MachineLearningServices/workspaces/computes/*", "Microsoft.MachineLearningServices/workspaces/notebooks/vm/*", "Microsoft.ManagedIdentity/userAssignedIdentities/*/assign/action"]
  }
  description = "[BDSO] AzureML Compute Operator Built-in role plus User Assigned Identity for Managed Identity in Clusters and Compute Instances"
}

resource "azurerm_role_definition" "BDSO_Reservations_Reader" {
  name  = "BDSO Reservations Reader"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Authorization/roleAssignments/read", "Microsoft.Capacity/*/read", "Microsoft.Consumption/reservationRecommendationDetails/read", "Microsoft.Consumption/reservationRecommendations/read"]
  }
  description = "[BDSO] Reservations Reader - Lets one read all the reservations in a tenant"
}

resource "azurerm_role_definition" "BDSO_Cosmos_DB_Admin" {
  name  = "BDSO Cosmos DB Admin"
  scope = var.scope
  permissions {
    actions = ["Microsoft.DocumentDB/databaseAccounts/*"]
  }
  description = "[BDSO] Cosmos DB Administrators (Lets you manage Azure Cosmos DB accounts, Backups/Restores, etc.)"
}

resource "azurerm_role_definition" "BDSO_ControlMonkey_Role" {
  name  = "BDSO ControlMonkey Role"
  scope = "/subscriptions/abff3baf-b8e1-4a0b-83a0-54cbcc0b561b"
  permissions {
    actions = ["*/read"]
  }
}

resource "azurerm_role_definition" "BDSO_Azure_Administrator" {
  name  = "BDSO Azure Administrator"
  scope = var.scope
  permissions {
    actions     = ["*"]
    not_actions = ["Microsoft.Authorization/elevateAccess/action", "Microsoft.Authorization/roleAssignments/write", "Microsoft.Authorization/roleAssignments/delete"]
  }
  description = "[BDSO] Owner except Tenant elevation and Role Assignment write/delete"
}

resource "azurerm_role_definition" "BDSO_Disk_Attacher" {
  name  = "BDSO Disk Attacher"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Compute/disks/read", "Microsoft.Compute/disks/write", "Microsoft.Compute/virtualMachines/write", "Microsoft.Network/networkInterfaces/join/action", "Microsoft.ManagedIdentity/userAssignedIdentities/assign/action"]
  }
  description = "[BDSO] Create and attach Disks on Virtual Machines"
}

resource "azurerm_role_definition" "BDSO_Virtual_Machine_Write__Test_" {
  name  = "BDSO Virtual Machine Write (Test)"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Compute/virtualMachines/write"]
  }
  description = "[BDSO] Virtual Machine Write"
}

resource "azurerm_role_definition" "BDSO_Dms_Custom_Role_For_MI" {
  name  = "BDSO Dms Custom Role For MI"
  scope = var.scope
  permissions {
    actions = ["Microsoft.Storage/storageAccounts/read", "Microsoft.Storage/storageAccounts/listkeys/action", "Microsoft.Storage/storageAccounts/blobServices/read", "Microsoft.Storage/storageAccounts/blobServices/write", "Microsoft.Storage/storageAccounts/blobServices/containers/read", "Microsoft.Sql/managedInstances/read", "Microsoft.Sql/managedInstances/write", "Microsoft.Sql/managedInstances/databases/read", "Microsoft.Sql/managedInstances/databases/write", "Microsoft.Sql/managedInstances/databases/delete", "Microsoft.DataMigration/locations/operationResults/read", "Microsoft.DataMigration/locations/operationStatuses/read", "Microsoft.DataMigration/locations/sqlMigrationServiceOperationResults/read", "Microsoft.DataMigration/databaseMigrations/write", "Microsoft.DataMigration/databaseMigrations/read", "Microsoft.DataMigration/databaseMigrations/delete", "Microsoft.DataMigration/databaseMigrations/cancel/action", "Microsoft.DataMigration/databaseMigrations/cutover/action", "Microsoft.DataMigration/sqlMigrationServices/write", "Microsoft.DataMigration/sqlMigrationServices/delete", "Microsoft.DataMigration/sqlMigrationServices/read", "Microsoft.DataMigration/sqlMigrationServices/listAuthKeys/action", "Microsoft.DataMigration/sqlMigrationServices/regenerateAuthKeys/action", "Microsoft.DataMigration/sqlMigrationServices/deleteNode/action", "Microsoft.DataMigration/sqlMigrationServices/listMonitoringData/action", "Microsoft.DataMigration/sqlMigrationServices/listMigrations/read", "Microsoft.DataMigration/sqlMigrationServices/MonitoringData/read", "Microsoft.DataMigration/SqlMigrationServices/tasks/read", "Microsoft.DataMigration/SqlMigrationServices/tasks/write", "Microsoft.DataMigration/SqlMigrationServices/tasks/delete"]
  }
  description = "[BDSO] Custom Role to Migrate Managed Instances"
}
