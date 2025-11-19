variable "rgs" {
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
}

variable "network" {
  type = map(object({
    name          = string
    location      = string
    rg_name       = string
    address_space = list(string)
    tags          = optional(map(string))
    subnets = list(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}

variable "public_ips" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    tags                = optional(map(string))
  }))
}

variable "key_vault" {
  type = map(object({
    kv_name  = string
    location = string
    rg_name  = string
  }))
}

variable "vm_username" {
  type = string
}

variable "vm_password" {
  type = string
}

variable "sql_username" {
  type = string
}

variable "sql_password" {
  type = string
}


variable "vms" {
  type = map(object({
    nic_name               = string
    location               = string
    rg_name                = string
    vnet_name              = string
    subnet_name            = string
    pip_name               = string
    kv_name                = optional(string)
    vm_name                = string
    size                   = string
    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))
}

variable "sql_servers" {
  type = map(object({
    name     = string
    rg_name  = string
    location = string
    kv_name  = string
    tags     = optional(map(string))
  }))
}

variable "sql_database" {
  type = map(object({
    name         = string
    server_id    = string
    collation    = string
    license_type = string
    max_size_gb  = number
    sku_name     = string
    enclave_type = string
    tags         = optional(map(string))
  }))
}


variable "stas" {
  type = map(object({
    name                     = string
    location                 = string
    rg_name                  = string
    account_tier             = string
    account_replication_type = string
    tags                     = optional(map(string))
  }))
}
