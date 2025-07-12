output "sql_server_id" {
  value = module.azurerm_mssql_server.mssql_server

}

output "subnet_ids" {
  value = module.azurerm_subnet.subnet_ids

}
output "vnet_name" {
  value = module.azurerm_virtual_network.vnet_name
}

output "public_ip_id" {
  value = module.azurerm_public_ip.public_ip_id
}

