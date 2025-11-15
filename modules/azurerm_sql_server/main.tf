resource "azurerm_mssql_server" "sql_servers" {
  for_each                     = var.sql_servers
  name                         = each.value.name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = "12.0"

  administrator_login          = data.azurerm_key_vault_secret.sql_username[each.key].value
  administrator_login_password = data.azurerm_key_vault_secret.sql_password[each.key].value

  minimum_tls_version          = "1.2"

  tags = each.value.tags
}
