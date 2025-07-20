# output "sql_server_id" {
#   value = module.azurerm_mssql_server.mssql_server

# }

output "subnet_ids" {
  value = module.azurerm_subnet.subnet_ids

}
output "vnet_name" {
  value = module.azurerm_virtual_network.vnet_name
}

output "public_ip_id" {
  value = module.azurerm_public_ip.public_ip_id
}

output "vm_public_ips" {
  value = module.azurerm_linux_virtual_machine.public_ips
}

output "frontend_ssh_command" {
  value = "ssh -i ~/.ssh/id_rsa azureuser@${module.azurerm_public_ip.public_ip_address}" # update if username/key is different
  description = "Use this command to SSH into the frontend VM"
}