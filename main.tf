resource "azurerm_resource_group" "rgtfstate" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "rgtfstorage" {
  name                      = var.storage_account_name
  resource_group_name       = azurerm_resource_group.rgtfstate.name
  location                  = azurerm_resource_group.rgtfstate.location
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  depends_on                = [ azurerm_resource_group.rgtfstate ]
}

resource "azurerm_storage_container" "rgtfcontainer" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.rgtfstorage.name
  container_access_type = "container"
  depends_on            = [ azurerm_storage_account.rgtfstorage ]
}