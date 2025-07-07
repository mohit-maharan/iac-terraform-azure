resource "azurerm_storage_container" "saini-storage-container" {
  name                  = var.storage_container_name
  storage_account_id    = var.storage_account_id
  container_access_type = var.container_access_type
}