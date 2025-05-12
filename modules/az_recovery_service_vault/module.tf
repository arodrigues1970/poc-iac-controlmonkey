resource "azurerm_recovery_services_vault" "rsv" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  soft_delete_enabled = var.soft_delete_enabled
  tags                = var.tags

  dynamic "identity" {
    for_each = var.identity
    content {
      type = identity.value["type"]
    }
  }

  # dynamic "encryption" {
  #   for_each = var.encryption
  #   content {
  #     key_id                            = encryption.value["key_id"]
  #     infrastructure_encryption_enabled = encryption.value["infrastructure_encryption_enabled"]
  #     use_system_assigned_identity      = encryption.value["use_system_assigned_identity"]
  #   }
  # }
}

resource "azurerm_backup_policy_vm" "policy_vm" {
  for_each                       = { for policy in var.vm_policies : policy.name => policy }
  instant_restore_retention_days = each.value.instant_restore_retention_days
  name                           = each.value.name
  recovery_vault_name            = azurerm_recovery_services_vault.rsv.name
  resource_group_name            = azurerm_recovery_services_vault.rsv.resource_group_name
  tags                           = azurerm_recovery_services_vault.rsv.tags
  timezone                       = each.value.timezone

  dynamic "backup" {
    for_each = each.value.backup
    content {
      frequency = backup.value["frequency"]
      time      = backup.value["time"]
      weekdays  = backup.value["weekdays"]
    }
  }

  dynamic "retention_daily" {
    for_each = each.value.retention_daily
    content {
      count = retention_daily.value["count"]
    }
  }

  dynamic "retention_monthly" {
    for_each = each.value.retention_monthly
    content {
      count    = retention_monthly.value["count"]
      weekdays = retention_monthly.value["weekdays"]
      weeks    = retention_monthly.value["weeks"]
    }
  }

  dynamic "retention_weekly" {
    for_each = each.value.retention_weekly
    content {
      count    = retention_weekly.value["count"]
      weekdays = retention_weekly.value["weekdays"]
    }
  }

  dynamic "retention_yearly" {
    for_each = each.value.retention_yearly
    content {
      count    = retention_yearly.value["count"]
      months   = retention_yearly.value["months"]
      weekdays = retention_yearly.value["weekdays"]
      weeks    = retention_yearly.value["weeks"]
    }
  }

  depends_on = [azurerm_recovery_services_vault.rsv]
}
