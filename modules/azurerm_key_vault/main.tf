
resource "azurerm_key_vault" "kv" {
  name                        = var.key_vault_name
  location                    = var.resource_group_location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled

  sku_name = var.key_vault_sku_name

  network_acls {
         bypass = "AzureServices"
         default_action = "Allow" #This is not best practice consider using "Deny" for production environments
     }
     
  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    key_permissions = [
      "Get","Create", "Delete", "Purge", "Recover", "Backup", "Restore"
    ]

    secret_permissions = [
      "Get","Set", "Delete", "Purge", "Recover", "Backup", "Restore", "List"
    ]

    storage_permissions = [
      "Get",
    ]
  }
}