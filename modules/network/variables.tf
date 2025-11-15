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