module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "network" {
  depends_on = [module.resource_group]
  source     = "../../modules/network"
  network    = var.network
}

module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_public_ip"
  public_ips = var.public_ips
}

module "key_vault" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_key_vault"
  key_vault  = var.key_vault
}

module "compute" {
  depends_on = [module.resource_group, module.network, module.public_ip, module.key_vault]
  source     = "../../modules/compute"
  vms        = var.vms
}

module "sql_servers" {
  depends_on  = [module.resource_group]
  source      = "../../modules/azurerm_sql_server"
  sql_servers = var.sql_servers
}

module "sql_database" {
  depends_on   = [module.sql_server]
  source       = "../../modules/azurerm_sql_database"
  sql_database = var.sql_database
}

module "storage_account" {
  depends_on = [resource_group]
  source     = "../../modules/azurerm_storage_account"
  stas       = var.stas
}
