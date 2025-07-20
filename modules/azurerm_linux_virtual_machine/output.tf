output "public_ips" {
  value = {
    for k, vm in azurerm_linux_virtual_machine.vm :
    k => try(vm.public_ip_address, "")
  }
}
