resource "azurerm_automation_account" "account" {
  location            = var.location
  name                = var.automation_name
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  tags                = var.tags

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }
}

resource "azurerm_automation_certificate" "certificate" {
  count                   = var.cert_name == null ? 0 : 1
  automation_account_name = azurerm_automation_account.account.name
  base64                  = var.cert_base64
  description             = var.cert_description
  name                    = var.cert_name
  resource_group_name     = azurerm_automation_account.account.resource_group_name
  exportable              = var.cert_exportable

  dynamic "timeouts" {
    for_each = var.cert_timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }
}

resource "azurerm_automation_runbook" "runbook" {
  for_each                = { for runbook in var.runbook_list : runbook.name => runbook }
  name                    = each.value.name
  location                = var.location
  resource_group_name     = azurerm_automation_account.account.resource_group_name
  automation_account_name = azurerm_automation_account.account.name
  log_verbose             = each.value.log_verbose
  log_progress            = each.value.log_progress
  description             = each.value.description
  runbook_type            = each.value.runbook_type
  content                 = each.value.content
  tags                    = var.tags
}

resource "azurerm_automation_schedule" "schedule" {
  for_each                = { for schedule in var.schedule_list : schedule.name => schedule }
  automation_account_name = azurerm_automation_account.account.name
  description             = each.value.description
  expiry_time             = each.value.expiry_time
  frequency               = each.value.frequency
  interval                = each.value.interval
  month_days              = each.value.month_days
  name                    = each.value.name
  resource_group_name     = azurerm_automation_account.account.resource_group_name
  start_time              = each.value.start_time
  timezone                = each.value.timezone
  week_days               = each.value.week_days

  dynamic "monthly_occurrence" {
    for_each = each.value.monthly_occurrence
    content {
      day        = monthly_occurrence.value["day"]
      occurrence = monthly_occurrence.value["occurrence"]
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

  depends_on = [
    azurerm_automation_runbook.runbook
  ]
}

resource "azurerm_automation_job_schedule" "job_schedule" {
  for_each                = { for job_schedule in var.job_schedule_list : job_schedule.schedule_name => job_schedule }
  automation_account_name = azurerm_automation_account.account.name
  parameters              = each.value.parameters
  resource_group_name     = azurerm_automation_account.account.resource_group_name
  run_on                  = each.value.run_on
  runbook_name            = each.value.runbook_name
  schedule_name           = each.value.schedule_name

  dynamic "timeouts" {
    for_each = each.value.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

  depends_on = [
    azurerm_automation_schedule.schedule
  ]
}
