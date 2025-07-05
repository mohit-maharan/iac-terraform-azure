variable "sql_server_name" {
  description = "The name of the SQL server"
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