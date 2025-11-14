variable "rg_name" { type = string }
variable "location" { type = string }
variable "subnet_id" { type = string }
variable "vms" {
  description = "List of objects: [{ name=..., role=..., public_ip=bool, tags=map }]"
  type = list(object({ name = string, role = string, public_ip = bool, tags = map(string) }))
}
variable "admin_username" { type = string }
variable "ssh_public_key" { type = string }
variable "vm_size" { type = string }
variable "image" {
  type = object({ publisher = string, offer = string, sku = string, version = string })
}
variable "tags" { type = map(string) default = {} }
variable "default_startup_script" { type = string default = "" }
variable "public_ip" { type = bool default = false }