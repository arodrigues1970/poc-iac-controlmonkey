resource "azurerm_automation_schedule" "schedule_redundancy" {
  for_each                = { for schedule in var.schedule_list : schedule.name => schedule if var.redundancy }
  automation_account_name = azurerm_automation_account.account.name
  description             = "${each.value.description} (Redundancy)"
  expiry_time             = each.value.expiry_time
  frequency               = each.value.frequency
  interval                = each.value.interval
  month_days              = each.value.month_days
  name                    = "${each.value.name}-redundancy"
  resource_group_name     = azurerm_automation_account.account.resource_group_name
  start_time              = timeadd(each.value.start_time, "15m")
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

resource "azurerm_automation_job_schedule" "job_schedule_redundancy" {
  for_each                = { for job_schedule in var.job_schedule_list : job_schedule.schedule_name => job_schedule if var.redundancy }
  automation_account_name = azurerm_automation_account.account.name
  parameters              = each.value.parameters
  resource_group_name     = azurerm_automation_account.account.resource_group_name
  run_on                  = each.value.run_on
  runbook_name            = each.value.runbook_name
  schedule_name           = "${each.value.schedule_name}-redundancy"

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
