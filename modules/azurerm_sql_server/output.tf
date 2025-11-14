output "sql_server_names" {
  value = [for s in azurerm_mssql_server.sql_server : s.name]
}
