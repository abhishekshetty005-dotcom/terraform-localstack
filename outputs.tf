output "resource_group_name" {
  description = "Created resource group name"
  value       = azurerm_resource_group.lab.name
}

output "resource_group_location" {
  description = "Resource group location"
  value       = azurerm_resource_group.lab.location
}
