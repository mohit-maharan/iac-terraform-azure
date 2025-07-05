variable "key_vault_id" {
    description = "The ID of the Key Vault where the secret will be stored"
    type        = string
  
}
variable "azurerm_key_vault_secret_name" {
  description = "The name of the Key Vault secret"
  type        = string
  
}
variable "azurerm_key_vault_secret_value" {
  description = "The value of the Key Vault secret"
  type        = string
  
}