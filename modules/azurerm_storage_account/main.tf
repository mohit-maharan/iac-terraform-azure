

resource "azurerm_storage_account" "saini-storage-account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

}



# network_rules {
#   default_action             = "Deny"
#   ip_rules                   = ["100.0.0.1"]
#   virtual_network_subnet_ids = [azurerm_subnet.sub.id]

# }
