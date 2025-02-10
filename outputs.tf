output "static_web_app_web_ui_url" {
  value = coalesce(azurerm_static_web_app.ag_web_ui_sws.default_host_name, "")
}