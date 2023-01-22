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

variable "nsg_config" {
  description = "Config for multiple subnet"
  type        = map(any)
  default = {
    "multiple-nsg-example" = {
      network_security_group_name = "myfirstnsg"
      nsg_resource_group_name = "myfirstrg"
      security_rule = {
        example = {
          name                       = "example"
          priority                   = 100
          direction                  = "Inbound"
          access                     = "Allow"
          protocol                   = "Tcp"
          source_port_range          = "*"
          destination_port_range     = "*"
          source_address_prefix      = "*"
          destination_address_prefix = "*"
        }           
      }
    },
    "multiple-nsg-example2" = {
      network_security_group_name = "mysecondnsg"
      nsg_resource_group_name = "mysecondrg"
      security_rule = {
        example2 = {
          name                       = "example2"
          priority                   = 100
          direction                  = "Inbound"
          access                     = "Allow"
          protocol                   = "Tcp"
          source_port_range          = "*"
          destination_port_range     = "*"
          source_address_prefix      = "*"
          destination_address_prefix = "*"
        }           
      }
    }
  }
}