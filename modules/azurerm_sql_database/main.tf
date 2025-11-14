resource "azurerm_sql_server" "this" {
  name                         = var.server_name
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password
}

resource "azurerm_sql_database" "this" {
  name                = var.database_name
  resource_group_name = var.rg_name
  location            = var.location
  server_name         = azurerm_sql_server.this.name
  sku_name            = var.sku_name
}