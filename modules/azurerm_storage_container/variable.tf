variable "storage_container_name" {
  description = "The name of the storage container."
  type        = string

 }
variable "container_access_type" {
  description = "The access type of the storage container."
  type        = string
}
variable "storage_account_id" {
  description = "The ID of the storage account where the container will be created."
  type        = string
}