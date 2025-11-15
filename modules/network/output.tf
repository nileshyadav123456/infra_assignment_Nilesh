output "vnet_ids" {
  value = { for k, v in azurerm_virtual_network.virtual_network : k => v.id }
}

output "subnet_ids" {
  value = {
    for k, v in azurerm_virtual_network.virtual_network :
    k => [for s in v.subnet : s.id]
  }
}
