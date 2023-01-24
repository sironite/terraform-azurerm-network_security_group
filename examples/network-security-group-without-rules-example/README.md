# Terraform module | AzureRM - Network Security Group

This Terraform module is designed to create a Network Security Group for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`network_security_group`

```hcl
module "network_security_group" {
  source  = "sironite/network_security_group/azurerm"
  version = "x.x.x"

  azure_location              = var.azure_location
  network_security_group_name = var.network_security_group_name
  resource_group_name         = var.resource_group_name
}

```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
