data "azurerm_key_vault_secret" "sql_username" {
  for_each     = var.sql_servers
  name         = "sql-username"
  key_vault_id = var.key_vault_ids[ each.value.kv_name ]
}

data "azurerm_key_vault_secret" "sql_password" {
  for_each     = var.sql_servers
  name         = "sql-password"
  key_vault_id = var.key_vault_ids[ each.value.kv_name ]
}
