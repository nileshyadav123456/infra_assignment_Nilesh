variable "rg_name" { type = string }
variable "location" { type = string }
variable "server_name" { type = string }
variable "database_name" { type = string }
variable "admin_login" { type = string }
variable "admin_password" { type = string }
variable "sku_name" { type = string default = "S0" }