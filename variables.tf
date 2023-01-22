variable "network_security_group_name" {
  description = "The name of the network security group. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}

variable "azure_location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}

variable "security_rule" {
  description = ""
  type        = map(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default = {
    "default" = {
      access = null
      destination_address_prefix = null
      destination_port_range = null
      direction = null
      name = null
      priority = 1
      protocol = null
      source_address_prefix = null
      source_port_range = null
    }
  }

}

variable "tags" {
  description = " A mapping of tags to assign to the resource."
  type        = map
  default     = {}
}