<!-- BEGIN_TF_DOCS -->
 # Network Security Group
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/)

# Usage - Module

## multiple network security groups with rules
```hcl
module "network_security_group" {
  source  = "sironite/network_security_group/azurerm"
  version = "x.x.x"

  for_each = var.nsg_config


  azure_location              = var.azure_location
  network_security_group_name = each.value.network_security_group_name
  resource_group_name         = each.value.nsg_resource_group_name

  security_rule = each.value.security_rule

}
```

## network security group without rules
```hcl
module "network_security_group" {
  source  = "sironite/network_security_group/azurerm"
  version = "x.x.x"

  azure_location              = var.azure_location
  network_security_group_name = var.network_security_group_name
  resource_group_name         = var.resource_group_name

}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| azure\_location | The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | yes |
| network\_security\_group\_name | The name of the network security group. Changing this forces a new resource to be created. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created. | `string` | yes |
| security\_rule | Configuration delegations on security<br>  `security_rule = {<br>    example = {<br>      name                       = string<br>      priority                   = number<br>      direction                  = string<br>      access                     = string<br>      protocol                   = string<br>      source_port_range          = string<br>      destination_port_range     = string<br>      source_address_prefix      = string<br>      destination_address_prefix = string<br>    }<br>  }` | `map` | no |
| tags | A mapping of tags to assign to the resource. | `map` | no |

## Outputs

No outputs.

## Related documentation
<!-- END_TF_DOCS -->