resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  size                = var.vm_size
  admin_username      = var.admin_username
 
  disable_password_authentication = var.disable_password_authentication
  admin_password = var.admin_password
  network_interface_ids = [var.network_interface_id]

admin_ssh_key {
  username   = var.admin_username
  public_key = file(var.ssh_public_key_path)
}

  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
    
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.source_image_version
    
  }
}
