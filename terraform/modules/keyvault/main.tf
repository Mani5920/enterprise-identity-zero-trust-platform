variable "resource_group_name" { type = string }
variable "location" { type = string }
variable "project_name" { type = string }
variable "tenant_id" { type = string }
variable "tags" { type = map(string) }

resource "azurerm_key_vault" "main" {
  name                       = substr(replace("kv-${var.project_name}", "_", "-"), 0, 24)
  location                   = var.location
  resource_group_name        = var.resource_group_name
  tenant_id                  = var.tenant_id
  sku_name                   = "standard"
  enable_rbac_authorization  = true
  soft_delete_retention_days = 7
  purge_protection_enabled   = true
  public_network_access_enabled = false
  tags                       = var.tags
}

output "key_vault_name" {
  value = azurerm_key_vault.main.name
}
