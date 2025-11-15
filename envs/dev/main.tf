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
  depends_on = [
    module.resource_group,
    module.network,
    module.public_ip,
    module.key_vault
  ]
  source = "../../modules/compute"
  vms    = var.vms
}

module "sql_servers" {
  depends_on  = [module.resource_group]
  source      = "../../modules/azurerm_sql_server"
  sql_servers = var.sql_servers
}

module "sql_database" {
  depends_on = [module.sql_servers]
  source     = "../../modules/azurerm_sql_database"

  sql_database = {
    sql_database001 = {
      name         = "sql_database-dev-001"
      server_id    = module.sql_servers.server_id
      collation    = "SQL_Latin1_General_CP1_CI_AS"
      license_type = "LicenseIncluded"
      max_size_gb  = "2"
      sku_name     = "S0"
      enclave_type = "VBS"
      tags         = { env = "dev" }
    }
  }
}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_storage_account"
  stas       = var.stas
}