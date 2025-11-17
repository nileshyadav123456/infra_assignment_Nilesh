output "server_id" {
  value = { for k, v in azurerm_mssql_server.sql_servers : k => v.id }
}
