
output "subnet_id" {
  description = "The IDs of the subnets created."
  value       = azurerm_subnet.subnet.id
  
}