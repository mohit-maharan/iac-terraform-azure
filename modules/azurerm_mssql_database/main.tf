

resource "azurerm_mssql_database" "database" {
  name         = var.mssql_database_name
  server_id    = var.sql_server_id
  collation    = var.mssql_database_collation
  license_type = var.mssql_database_license_type
  max_size_gb  = var.mssql_database_max_size_gb
  sku_name     = var.mssql_database_sku_name
  enclave_type = var.mssql_database_enclave_type

  tags = {
    foo = "bar"
  }

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = false
  }
}