module "network_security_group" {
  source  = "sironite/network_security_group/azurerm"
  version = "x.x.x"

  for_each = var.nsg_config


  azure_location              = var.azure_location
  network_security_group_name = each.value.network_security_group_name
  resource_group_name         = each.value.nsg_resource_group_name

  security_rule = each.value.security_rule

}