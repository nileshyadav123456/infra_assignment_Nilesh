variable "rg_name" { type = string }
variable "location" { type = string }
variable "vnet_name" { type = string }
variable "address_space" { type = list(string) }
variable "subnets" {
  type = list(object({ name = string, prefix = string, role = string }))
}
variable "nsg_name" { type = string }