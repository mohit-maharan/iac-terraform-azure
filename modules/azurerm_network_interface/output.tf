# output "id" {
#   value = azurerm_network_interface.nic.id

# }

output "nic_ids" {
  value = {
    for k, nic in azurerm_network_interface.nic :
    k => nic.id

  }

}
