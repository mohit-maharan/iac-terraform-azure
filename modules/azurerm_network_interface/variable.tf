
variable "resource_group_name" {}
variable "resource_group_location" {}
variable "network_interface_name" {}
variable "ip_configuration_name" {}

variable "private_ip_address_allocation" {}
variable "subnet_id" {
  description = "The ID of the subnet to which the network interface will be associated."
  type        = string
  
}

variable "public_ip_id" {
  description = "The ID of the public IP address to associate with the network interface."
  type        = string

}
