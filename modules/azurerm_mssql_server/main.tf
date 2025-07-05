
resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.resource_group_location
  version                      = var.sql_server_version
  administrator_login          = var.sql_server_admin_login
  administrator_login_password = var.sql_server_admin_password
  minimum_tls_version          = var.sql_server_minimum_tls_version
  public_network_access_enabled = false

  #   azuread_administrator {
  #     login_username = "AzureAD Admin"
  #     object_id      = "00000000-0000-0000-0000-000000000000"
  #   }

  #   tags = {
  #     environment = "production"
  #   }

}

# resource "azurerm_mssql_server_extended_auditing_policy" "auditing_policy" {
#   server_id                                = azurerm_mssql_server.sql_server.id
#   storage_endpoint                         = azurerm_storage_account.example.primary_blob_endpoint
#   storage_account_access_key                = azurerm_storage_account.example.primary_access_key
#   storage_account_access_key_is_secondary   = true
#   retention_in_days                         = 6
# }