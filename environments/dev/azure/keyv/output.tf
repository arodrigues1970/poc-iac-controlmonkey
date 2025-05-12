output "key_vault_id" {
  description = "The ID of the Key Vault"
  value = tomap({
    for key, value in azurerm_key_vault.vault : key => value.id
  })
}
