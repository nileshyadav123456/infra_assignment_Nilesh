variable "name" { type = string }
variable "rg_name" { type = string }
variable "location" { type = string }
variable "container_name" { type = string }
variable "create_app_container" { type = bool default = false }
variable "app_container_name" { type = string default = "app" }