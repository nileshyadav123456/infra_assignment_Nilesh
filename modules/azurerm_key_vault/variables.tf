variable "key_vault" {
  type = map(object({
    kv_name  = string
    location = string
    rg_name  = string
  }))
}

variable "vm_username" { type = string }
variable "vm_password" { type = string }
variable "sql_username" { type = string }
variable "sql_password" { type = string }
