output "sql_db_names" {
  value = [for d in azurerm_mssql_database.sql_database : d.name]
}
