module "azurerm_resource_group" {

  source                  = "../../modules/azurerm_resource_group"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}
module "azurerm_virtual_network" {
  source                  = "../../modules/azurerm_virtual_network"
  depends_on              = [module.azurerm_resource_group]
  virtual_network_name    = var.virtual_network_name
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  address_space           = var.address_space
}
module "azurerm_subnet" {


  depends_on = [module.azurerm_virtual_network]
  source     = "../../modules/azurerm_subnet"

  subnets              = var.subnets
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name

}

# module "azurerm_mssql_server" {

#   depends_on = [module.azurerm_resource_group]
#   source     = "../../modules/azurerm_mssql_server"

#   resource_group_name            = var.resource_group_name
#   resource_group_location        = var.resource_group_location
#   sql_server_name                = var.sql_server_name
#   sql_server_version             = var.sql_server_version
#   sql_server_minimum_tls_version = var.sql_server_minimum_tls_version
#   sql_server_admin_login         = var.sql_server_admin_login
#   sql_server_admin_password      = var.sql_server_admin_password
# }

# module "azurerm_mssql_database" {

#   depends_on = [module.azurerm_mssql_server]
#   source     = "../../modules/azurerm_mssql_database"

#   sql_server_id               = module.azurerm_mssql_server.mssql_server
#   mssql_database_name         = var.mssql_database_name
#   mssql_database_collation    = var.mssql_database_collation
#   mssql_database_license_type = var.mssql_database_license_type
#   mssql_database_max_size_gb  = var.mssql_database_max_size_gb
#   mssql_database_sku_name     = var.mssql_database_sku_name
#   mssql_database_enclave_type = var.mssql_database_enclave_type

# }

data "azurerm_client_config" "current" {}
# This module creates an Azure Key Vault with specified configurations.


module "azurerm_key_vault" {

  depends_on = [module.azurerm_resource_group]
  source     = "../../modules/azurerm_key_vault"

  key_vault_name          = var.key_vault_name
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  tenant_id               = data.azurerm_client_config.current.tenant_id
  object_id               = data.azurerm_client_config.current.object_id

  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  key_vault_sku_name          = var.key_vault_sku_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
}
module "azurerm_key_secret" {

  depends_on = [module.azurerm_key_vault]
  source     = "../../modules/azurerm_key_secret"

  azurerm_key_vault_secret_name  = var.azurerm_key_vault_secret_name
  azurerm_key_vault_secret_value = var.azurerm_key_vault_secret_value
  key_vault_id                   = module.azurerm_key_vault.azurerm_key_vault_id
}

module "azurerm_storage_account" {

  depends_on = [module.azurerm_resource_group]
  source     = "../../modules/azurerm_storage_account"

  storage_account_name             = var.storage_account_name
  resource_group_name              = var.resource_group_name
  resource_group_location          = var.resource_group_location
  storage_account_tier             = var.storage_account_tier
  storage_account_replication_type = var.storage_account_replication_type


}

module "azurerm_storage_container" {

  depends_on = [module.azurerm_storage_account]
  source     = "../../modules/azurerm_storage_container"

  storage_container_name = var.storage_container_name
  storage_account_id     = module.azurerm_storage_account.storage_account_id
  container_access_type  = var.container_access_type
}

module "azurerm_public_ip" {
  depends_on              = [module.azurerm_resource_group]
  source                  = "../../modules/azurerm_public_ip"
  pip_name                = var.pip_name
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  allocation_method       = var.allocation_method
}



module "azurerm_network_interface" {
  source = "../../modules/azurerm_network_interface"

  depends_on              = [module.azurerm_subnet, module.azurerm_public_ip, module.azurerm_network_security_group]
  nics                    = var.nics  # <== Yeh map hoga
  subnet_ids              = module.azurerm_subnet.subnet_ids
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  nsg_ids                 = module.azurerm_network_security_group.nsg_ids
  nic_nsg_map             = var.nic_nsg_map
  public_ip_address_map   = { "nic1" = module.azurerm_public_ip.public_ip_id }
}
module "azurerm_network_security_group" {
  depends_on              = [module.azurerm_resource_group]
  source                  = "../../modules/azurerm_network_security_group"
  nsgs                    = var.nsgs
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module "azurerm_linux_virtual_machine" {

  depends_on              = [module.azurerm_network_interface]
  source                  = "../../modules/azurerm_linux_virtual_machine"
  vms                     = var.vms
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  nic_ids                 = module.azurerm_network_interface.nic_ids
  admin_username          = var.admin_username
  ssh_public_key_path     = var.ssh_public_key_path

}
