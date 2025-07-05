variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  
}
variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
  
}
variable "enabled_for_disk_encryption" {
  description = "Whether the Key Vault is enabled for disk encryption"
  type        = bool
  default     = true
  
}
variable "soft_delete_retention_days" {
  description = "The number of days to retain deleted Key Vaults"
  type        = number 
}

variable "purge_protection_enabled" {
  description = "Whether purge protection is enabled for the Key Vault"
  type        = bool
  
  
}
variable "key_vault_sku_name" {
  description = "The SKU name of the Key Vault"
  type        = string
  default     = "standard"
}
variable "tenant_id" {
  type = string
}

variable "object_id" {
  type = string
}
