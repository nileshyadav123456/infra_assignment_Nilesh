variable "location" {}
variable "resource_group_name" {}
variable "vnet_name" {}
variable "address_space" { type = list(string) }
variable "subnets" { type = list(object({ name = string, prefix = string })) }
variable "nsg_name" {}
variable "vm_count_per_subnet" { type = number }
variable "admin_username" {}
variable "admin_password" { sensitive = true }
variable "environment" {}