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
  name                     = var.storageaccount_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}