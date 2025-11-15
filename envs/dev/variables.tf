variable "rgs" {
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
}

variable "network" {
  type = map(obects({
    name          = string
    location      = string
    rg_name       = string
    address_space = list(string)
    tags          = optional(string)
    subnets = optional(list(object({
      name             = string
      address_prefixes = list(string)
    }))) }
  ))
}

variable "public_ips" {}
variable "key_vault" {}
variable "vms" {}