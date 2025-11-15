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
  account_tier             = each.value.account_tire
  account_replication_type = each.value.account_replication_type

  tags = each.value.tags
}
