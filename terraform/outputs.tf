output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "virtual_network_name" {
  value = module.network.virtual_network_name
}

output "log_analytics_workspace_id" {
  value = module.monitoring.workspace_id
}

output "key_vault_name" {
  value = module.keyvault.key_vault_name
}
