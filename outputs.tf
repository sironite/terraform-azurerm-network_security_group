output "network_security_group_id" {
  description = "The ID of the Network Security Group."
  sensitive   = false
  value       = try(azurerm_network_security_group.this.id)
}