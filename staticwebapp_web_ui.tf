
locals {
  static_web_app_name = "ag-static-web-app-web-ui"
  sku_tier            = "Free"
  sku_size            = "Free"
}

resource "azurerm_static_web_app" "ag_web_ui_sws" {
  name                = local.static_web_app_name
  resource_group_name = azurerm_resource_group.ag_rg.name
  location            = azurerm_resource_group.ag_rg.location
  sku_tier            = local.sku_tier
  sku_size            = local.sku_size
  tags                = var.tags_ag
  repository_branch   = var.repository_branch
  repository_url      = var.web_ui_repository_url
  repository_token    = var.web_ui_repository_token
}
