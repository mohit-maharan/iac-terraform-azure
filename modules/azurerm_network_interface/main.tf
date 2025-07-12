resource "azurerm_network_interface" "nic" {

  for_each = var.nics
  name                = each.value.name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

 


  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_ids[each.value.subnet_key]
    private_ip_address_allocation = "Static"
    private_ip_address            = each.value.private_ip

    
  }
}

resource "azurerm_network_interface_security_group_association" "nic_nsg_assoc" {
  for_each = var.nic_nsg_map

  network_interface_id      = azurerm_network_interface.nic[each.key].id
  network_security_group_id = var.nsg_ids[each.value]
}