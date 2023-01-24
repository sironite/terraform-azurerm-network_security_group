resource "azurerm_network_security_group" "this" {
  name                = var.network_security_group_name
  location            = var.azure_location
  resource_group_name = var.resource_group_name

  dynamic "security_rule" {
    for_each = var.security_rule != null ? var.security_rule : {}
    content {
      name                       = try(security_rule.value.name, null)
      priority                   = try(security_rule.value.priority, null)
      direction                  = try(security_rule.value.direction, null)
      access                     = try(security_rule.value.access, null)
      protocol                   = try(security_rule.value.protocol, null)
      source_port_range          = try(security_rule.value.source_port_range, null)
      destination_port_range     = try(security_rule.value.destination_port_range, null)
      source_address_prefix      = try(security_rule.value.source_address_prefix, null)
      destination_address_prefix = try(security_rule.value.destination_address_prefix, null)
    }
  }

  tags = var.tags

}
