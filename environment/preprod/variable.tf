variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}
variable "resource_group_location" {
    description = "The location of the resource group"
    type        = string
}
variable "virtual_network_name" {
    description = "The name of the virtual network"
    type        = string
}
variable "address_space" {
    description = "The address space for the virtual network"
    type        = list(string)
}
variable "subnet_name" {
    description = "The name of the subnet"
    type        = string
}
variable "address_prefixes" {
    description = "The address prefixes for the subnet"
    type        = list(string)
}

variable "sql_server_name" {
  description = "The name of the SQL server"
  type        = string
}
variable "sql_server_version" {
  description = "The version of the SQL server"
  type        = string
    default     = "12.0"  # Default version can be adjusted as needed
  
}
variable "sql_server_admin_login" {
  description = "The administrator login for the SQL server"
  type        = string
}
variable "sql_server_admin_password" {
  description = "The administrator password for the SQL server"
  type        = string
  sensitive   = true
}
variable "sql_server_minimum_tls_version" {
  description = "The minimum TLS version for the SQL server"
  type        = string
  

}
# variable "mssql_database_name" {
#   description = "The name of the SQL Database."
#   type        = string
  
# }
# variable "mssql_database_collation" {
#   description = "The collation of the SQL Database."
#   type        = string
  
# }
# variable "mssql_database_license_type" {
#   description = "The license type of the SQL Database."
#   type        = string
  
# }
# variable "mssql_database_max_size_gb" {
#   description = "The maximum size of the SQL Database in GB."
#   type        = number
#   default     = 32
# }
# variable "mssql_database_sku_name" {
#   description = "The SKU name of the SQL Database."
#   type        = string
  
  
# }
# variable "mssql_database_enclave_type" {
#   description = "The enclave type of the SQL Database."
#   type        = string
  
# }
# variable "mssql_server" {
#   description = "The ID of the SQL Server where the database will be created."
#   type        = string
  
# }

variable "key_vault_name" {
  description = "The name of the Key Vault"
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


variable "azurerm_key_vault_secret_name" {
  description = "The name of the Key Vault secret"
  type        = string
  
}
variable "azurerm_key_vault_secret_value" {
  description = "The value of the Key Vault secret"
  type        = string
  
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  
}

variable "storage_account_tier" {
  description = "The tier of the storage account."
  type        = string
 
}
variable "storage_account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  
}