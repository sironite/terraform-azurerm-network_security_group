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
  description = <<EOD
```
Configuration delegations on security
  security_rule = {
    example = {
      name                       = string
      priority                   = number
      direction                  = string
      access                     = string
      protocol                   = string
      source_port_range          = string
      destination_port_range     = string
      source_address_prefix      = string
      destination_address_prefix = string
    }
  }
```
EOD
  type        = map(any)
  default     = {}

}

variable "tags" {
  description = " A mapping of tags to assign to the resource."
  type        = map(any)
  default     = {}
}