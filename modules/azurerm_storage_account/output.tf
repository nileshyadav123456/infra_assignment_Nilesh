output "storage_account_names" {
  value = { for k, v in azurerm_storage_account.sta : k => v.name }
}
output "container_names" {
  value = { for k, v in azurerm_storage_container.tfstate : k => v.name }
}
