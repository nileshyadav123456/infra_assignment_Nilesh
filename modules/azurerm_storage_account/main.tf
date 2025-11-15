# resource "azurerm_storage_account" "example" {
#   name                     = "storageaccountname"
#   resource_group_name      = azurerm_resource_group.example.name
#   location                 = azurerm_resource_group.example.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
# }

resource "azurerm_storage_account" "sta" {
  for_each                 = var.stas
  name                     = each.value.name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  tags = each.value.tags
}

# resource "azurerm_storage_container" "tfstate" {
#   for_each              = var.stas
#   name                  = "tfstate"
#   storage_account_name  = azurerm_storage_account.sta[each.key].name
#   container_access_type = "private"
# }
