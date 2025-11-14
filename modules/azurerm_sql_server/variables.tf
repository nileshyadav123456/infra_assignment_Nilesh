variable "location" {}
variable "resource_group_name" {}
variable "subnet_map" { type = map(string) }
variable "vm_count_per_subnet" { type = number }
variable "admin_username" {}
variable "admin_password" {}
variable "tags" { type = map(string) }