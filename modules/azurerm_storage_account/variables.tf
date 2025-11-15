variable "stas" {
  type = map(object({
    name                     = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = optional(map(string))
  }))
}
