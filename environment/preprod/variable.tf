#subscription_id 

variable "subscription_id" {
  description = "The Azure subscription ID where resources will be created"
  type        = string
  
}


#Resource Group
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
}


# Virtual Network
variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}
variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

#sql server

variable "sql_server_name" {
  description = "The name of the SQL server"
  type        = string
}
variable "sql_server_version" {
  description = "The version of the SQL server"
  type        = string
  default     = "12.0" # Default version can be adjusted as needed

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

# SQL Database

variable "mssql_database_name" {
  description = "The name of the SQL Database."
  type        = string

}
variable "mssql_database_collation" {
  description = "The collation of the SQL Database."
  type        = string

}
variable "mssql_database_license_type" {
  description = "The license type of the SQL Database."
  type        = string

}
variable "mssql_database_max_size_gb" {
  description = "The maximum size of the SQL Database in GB."
  type        = number
  default     = 32
}
variable "mssql_database_sku_name" {
  description = "The SKU name of the SQL Database."
  type        = string


}
variable "mssql_database_enclave_type" {
  description = "The enclave type of the SQL Database."
  type        = string

}
# variable "mssql_server" {
#   description = "The ID of the SQL Server where the database will be created."
#   type        = string

# }
# Key Vault

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

# Key Vault Secret

variable "azurerm_key_vault_secret_name" {
  description = "The name of the Key Vault secret"
  type        = string

}
variable "azurerm_key_vault_secret_value" {
  description = "The value of the Key Vault secret"
  type        = string

}

# Storage Account
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
# Storage Container
variable "storage_container_name" {
  description = "The name of the storage container."
  type        = string

}
variable "container_access_type" {
  description = "The access type of the storage container."
  type        = string
}

# Public IP Address


variable "pip_name" {
  description = "The name of the public IP address."
  type        = string

}
variable "allocation_method" {
  description = "The allocation method for the public IP address (Static or Dynamic)."
  type        = string


}
# variable "nic_name" {
#   description = "The name of the network interface."
#   type        = string

# }

# variable "ip_configuration_name" {
#   description = "The name of the IP configuration for the network interface."
#   type        = string
# }

# variable "private_ip_address_allocation" {
#   description = "The private IP address allocation method (Static or Dynamic)."
#   type        = string
#   # default     = "Dynamic" # Default can be adjusted as needed
# }
# NSG
# variable "nsg_name" {
#   description = "The name of the network security group."
#   type        = string
  
# }

#  variable "security_rule_name" {
#    description = "The name of the security rule."
#    type        = string
# }
# variable "security_rule_priority" {
#   description = "The priority of the security rule."
#   type        = number
# }
# variable "security_rule_direction" {
#   description = "The direction of the security rule (Inbound or Outbound)."
#   type        = string
# }
# variable "security_rule_access" {
#   description = "The access level of the security rule (Allow or Deny)."
#   type        = string
# }
# variable "security_rule_protocol" {
#   description = "The protocol of the security rule (TCP, UDP, etc.)."
#   type        = string
# }
# variable "security_rule_source_port_range" {
#   description = "The source port range for the security rule."
#   type        = string
# }
# variable "security_rule_destination_port_range" {
#   description = "The destination port range for the security rule."
#   type        = string
# }

# variable "security_rule_destination_address_prefix" {
#   description = "The destination address prefix for the security rule."
#   type        = string
# }
variable "subnets" {
  description = "The name of the subnet to be created."
  type        = any
  
}

variable "nics" {
type = any  
}

variable "nsgs" {
  type = any
}
variable "nic_nsg_map" {
  type = map(string)
}