output "resource_group_name" {
  description = "The name of the created resource group"
  value       = azurerm_resource_group.main.name
}

output "resource_group_location" {
  description = "The Azure location of the resource group"
  value       = azurerm_resource_group.main.location
}