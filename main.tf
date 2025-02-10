
resource "azurerm_resource_group" "ag_rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags_ag
}
