
variable "resource_group_name" {}
variable "resource_group_location" {}
# variable "network_interface_name" {}
# variable "ip_configuration_name" {}

# variable "private_ip_address_allocation" {}
variable "subnet_ids" {
  description = "The ID of the subnet to which the network interface will be associated."
  type        = map(string)

}

# variable "private_ip_id" {
#   description = "The ID of the public IP address to associate with the network interface."
#   type        = string

# }

variable "nics" {
  type = map(object({
    name       = string
    subnet_key = string
    private_ip = string

  }))

}
variable "nsg_ids" {
  type = map(string)
}


variable "nic_nsg_map" {
  type = map(string)
}