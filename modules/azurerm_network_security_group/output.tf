# output "nsg_id" {
#   description = "ID of the Network Security Group"
#   value       = azurerm_network_security_group.nsg.nsg_id
  
# }
output "nsg_ids" {
  value = {
    for k, nsg in azurerm_network_security_group.nsgs :
    k => nsg.id
  }
}