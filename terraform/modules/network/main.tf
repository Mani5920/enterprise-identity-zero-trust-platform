variable "resource_group_name" { type = string }
variable "location" { type = string }
variable "project_name" { type = string }
variable "tags" { type = map(string) }

resource "azurerm_virtual_network" "main" {
  name                = "vnet-${var.project_name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.20.0.0/16"]
  tags                = var.tags
}

resource "azurerm_subnet" "application" {
  name                 = "snet-application"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.20.1.0/24"]
}

resource "azurerm_subnet" "private_endpoints" {
  name                 = "snet-private-endpoints"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.20.2.0/24"]
}

output "virtual_network_name" {
  value = azurerm_virtual_network.main.name
}
