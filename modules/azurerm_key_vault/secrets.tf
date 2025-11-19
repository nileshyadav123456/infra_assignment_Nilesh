resource "azurerm_key_vault_secret" "vm_username" {
  for_each     = var.key_vault
  name         = "vm-username"
  value        = var.vm_username
  key_vault_id = azurerm_key_vault.key_vault[each.key].id
}

resource "azurerm_key_vault_secret" "vm_password" {
  for_each     = var.key_vault
  name         = "vm-password"
  value        = var.vm_password
  key_vault_id = azurerm_key_vault.key_vault[each.key].id
}

resource "azurerm_key_vault_secret" "sql_username" {
  for_each     = var.key_vault
  name         = "sql-username"
  value        = var.sql_username
  key_vault_id = azurerm_key_vault.key_vault[each.key].id
}

resource "azurerm_key_vault_secret" "sql_password" {
  for_each     = var.key_vault
  name         = "sql-password"
  value        = var.sql_password
  key_vault_id = azurerm_key_vault.key_vault[each.key].id
}