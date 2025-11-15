module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs = var.rgs
}

module "network" {
 depends_on = [ module.resource_group ]
 source = "../../modules/network"
 network = var.network
}

module "public_ip" {
  depends_on = [ module.resource_group ]
  source     = "../../modules/azurerm_public_ip"
  public_ips = var.public_ips
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