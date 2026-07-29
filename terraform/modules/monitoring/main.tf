variable "resource_group_name" { type = string }
variable "location" { type = string }
variable "project_name" { type = string }
variable "tags" { type = map(string) }

resource "azurerm_log_analytics_workspace" "main" {
  name                = "log-${var.project_name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = var.tags
}

output "workspace_id" {
  value = azurerm_log_analytics_workspace.main.id
}
