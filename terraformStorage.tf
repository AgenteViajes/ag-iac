locals {
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tf_container_access_type = "private"
}

resource "azurerm_storage_account" "ag_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = local.account_tier
  account_replication_type = local.account_replication_type
  tags                     = var.tags_ag
}

resource "azurerm_storage_container" "terraform_state" {
  name                  = var.tf_storage_container_name
  storage_account_name  = azurerm_storage_account.ag_storage_account.name
  container_access_type = local.tf_container_access_type
}