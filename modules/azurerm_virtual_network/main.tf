resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name  
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  
 }