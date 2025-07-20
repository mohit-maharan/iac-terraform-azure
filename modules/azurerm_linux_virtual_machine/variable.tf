variable "vms" {
  type = map(object({
    name       = string
    size       = string
    nic_key    = string
    zone       = optional(string)
  }))
}

variable "nic_ids" {
  type = map(string)
}

variable "admin_username" {
  type = string
}

variable "ssh_public_key_path" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}
