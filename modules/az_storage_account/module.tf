resource "azurerm_storage_account" "storage" {
  name                      = var.storage_name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  account_tier              = var.storage_tier
  account_replication_type  = var.storage_replication_type
  min_tls_version           = var.min_tls
  account_kind              = var.account_kind

  dynamic "static_website" {
    for_each = var.static_website
    content {
      index_document     = static_website.value.index_document
      error_404_document = static_website.value.error_404_document
    }
  }

  tags = var.tags
}

resource "azurerm_storage_container" "container" {
  for_each              = { for container in var.container_list : container.name => container }
  name                  = each.value.name
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = each.value.container_access_type
}
