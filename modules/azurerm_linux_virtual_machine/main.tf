resource "azurerm_linux_virtual_machine" "vm" {

for_each = var.vms
  name                = each.value.name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  size                = each.value.size
  admin_username      = var.admin_username
   disable_password_authentication = true
  # admin_password = var.admin_password
  network_interface_ids = [var.nic_ids[each.value.nic_key]]

admin_ssh_key {
  username   = var.admin_username
  public_key = file(var.ssh_public_key_path)
}

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
zone = lookup(each.value, "zone", null)
}
