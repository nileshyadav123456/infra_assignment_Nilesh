output "vm_ids" {
  value = { for k, v in azurerm_linux_virtual_machine.vms : k => v.id }
}

output "vm_private_ips" {
  value = {
    for k, v in azurerm_network_interface.nic :
    k => v.ip_configuration[0].private_ip_address
  }
}
