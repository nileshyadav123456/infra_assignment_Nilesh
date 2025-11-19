data "azurerm_subnet" "subnet" {
  for_each             = var.vms
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}

data "azurerm_public_ip" "pip" {
  for_each            = var.vms
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}

data "azurerm_key_vault_secret" "vm_username" {
  for_each     = var.vms
  name         = "vm-username"
  key_vault_id = var.key_vault_ids[ each.value.kv_name ]
}

data "azurerm_key_vault_secret" "vm_password" {
  for_each     = var.vms
  name         = "vm-password"
  key_vault_id = var.key_vault_ids[ each.value.kv_name ]
}