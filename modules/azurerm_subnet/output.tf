
# output "subnet_id" {
#   description = "The IDs of the subnets created."
#   value       = azurerm_subnet.subnet.id
  
# }
output "subnet_ids" {
  value = {
    for k, subnet in azurerm_subnet.subnets :
    k => subnet.id
  }
}