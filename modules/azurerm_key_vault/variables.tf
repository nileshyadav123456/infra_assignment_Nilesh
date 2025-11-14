variable "name" { type = string }
variable "rg_name" { type = string }
variable "location" { type = string }
variable "tenant_id" { type = string }
variable "secret_name" { type = string default = "example" }
variable "secret_value" { type = string default = "secret-value" }