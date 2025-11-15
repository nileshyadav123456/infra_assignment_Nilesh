output "key_vault_names" {
  value = { for k, v in azurerm_key_vault.key_vault : k => v.name }
}

output "key_vault_locations" {
  value = { for k, v in azurerm_key_vault.key_vault : k => v.location }
}
