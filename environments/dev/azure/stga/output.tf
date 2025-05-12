output "storage_account_id" {
  description = "The ID of the Storage Account"
  value = tomap({
    for key, value in module.storage_account : key => value.storage_account_id
  })
}