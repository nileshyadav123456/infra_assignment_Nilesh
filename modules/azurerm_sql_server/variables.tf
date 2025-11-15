variable "sql_servers" {
  type = map(object({
    name         = string
    rg_name      = string
    location     = string
    kv_name      = string
    tags         = optional(map(string))
  }))
}
