variable "sql_database" {
  type = map(object({
    name         = string
    server_id    = string
    collation    = string
    version      = string
    license_type = string
    max_size_gb  = string
    sku_name     = string
    enclave_type = string
    tags         = optional(map(string))
  }))
}
