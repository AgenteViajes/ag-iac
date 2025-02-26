locals {
  web_app_name_hotels   = "ag-web-app-hotels-mngr"
  plan_service_name     = "ag-pl-srv-backend"
  plan_service_location = "West Central US"
  os_type               = "Linux"
  sku_name              = "F1"
}

resource "azurerm_service_plan" "ag_web_app_service_plan" {
  name                = local.plan_service_name
  location            = local.plan_service_location
  resource_group_name = azurerm_resource_group.ag_rg.name
  os_type             = local.os_type
  sku_name            = local.sku_name
}

resource "azurerm_linux_web_app" "ag_web_app_hotels_mngr" {
  name                = local.web_app_name_hotels
  resource_group_name = azurerm_resource_group.ag_rg.name
  location            = azurerm_service_plan.ag_web_app_service_plan.location
  service_plan_id     = azurerm_service_plan.ag_web_app_service_plan.id

  site_config {
    always_on = false
    cors {
      allowed_origins = [
        "*.azurestaticapps.net"
      ]
      support_credentials = true
    }
    application_stack {
      node_version = "20-lts"
    }
  }
}
