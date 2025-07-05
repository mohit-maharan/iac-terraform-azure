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
variable "sql_server_id" {
  description = "The ID of the SQL Server where the database will be created."
  type        = string
  
}