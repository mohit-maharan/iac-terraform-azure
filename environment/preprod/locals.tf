data "http" "my_ip" {
  url = "http://api.ipify.org"
}

locals {
  my_ip_cidr = "${trimspace(data.http.my_ip.response_body)}/32"
}