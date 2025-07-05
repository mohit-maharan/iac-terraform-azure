

resource "azurerm_key_vault_secret" "msvivaan-secret" {
  name         = var.azurerm_key_vault_secret_name
  value        = var.azurerm_key_vault_secret_value
  key_vault_id = var.key_vault_id
  content_type = "password"
  expiration_date = "2026-12-31T00:00:00Z"
}
