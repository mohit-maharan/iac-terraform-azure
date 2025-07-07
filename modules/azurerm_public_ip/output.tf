output "public_ip_id" {
  description = "Public IP of the VM"
  value       = azurerm_public_ip.pip.id
  }
output "public_ip_address" {
  description = "Public IP address of the VM"
  value       = azurerm_public_ip.pip.ip_address
}