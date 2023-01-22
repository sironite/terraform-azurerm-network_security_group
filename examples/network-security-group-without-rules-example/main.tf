module "network_security_group" {
  source  = "sironite/network_security_group/azurerm"
  version = "x.x.x"

  azure_location              = var.azure_location
  network_security_group_name = var.network_security_group_name
  resource_group_name         = var.resource_group_name

}