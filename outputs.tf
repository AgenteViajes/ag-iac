/*output "static_web_app_url" {
  value       = azurerm_static_site.ag_web_ui_sws.default_host_name
  description = "Default URL app"
}*/
output "static_web_app_web_ui_url" {
  value = coalesce(azurerm_static_web_app.ag_web_ui_sws.default_host_name, "")
}