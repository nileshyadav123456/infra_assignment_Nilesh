resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnets             = var.subnets
  nsg_name            = var.nsg_name
}

module "compute" {
  source              = "./modules/compute"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_map          = module.network.subnet_ids
  vm_count_per_subnet = var.vm_count_per_subnet
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  tags = { Environment = var.environment }
}