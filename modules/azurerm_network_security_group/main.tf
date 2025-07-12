resource "azurerm_network_security_group" "nsgs" {

  for_each            = var.nsgs
  name                = each.value.name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}


# This section defines the security rules for the network security group.
resource "azurerm_network_security_rule" "rules" {
  for_each = {
    for pair in flatten([
      for nsg_key, nsg in var.nsgs : [
        for rule in nsg.rules : {
          key      = "${nsg_key}-${rule.name}"
          nsg_name = nsg.name
          rule     = rule
        }
      ]
    ]) : pair.key => pair
  }

  name                        = each.value.rule.name
  priority                    = each.value.rule.priority
  direction                   = each.value.rule.direction
  access                      = each.value.rule.access
  protocol                    = each.value.rule.protocol
  source_port_range           = each.value.rule.source_port_range
  destination_port_range      = each.value.rule.destination_port_range
  source_address_prefix       = each.value.rule.source_address_prefix
  destination_address_prefix  = each.value.rule.destination_address_prefix
  resource_group_name         = var.resource_group_name
  network_security_group_name = each.value.nsg_name
}


