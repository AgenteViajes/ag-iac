terraform {
  backend "azurerm" {
    resource_group_name  = "AG-resource-group"
    storage_account_name = "storageacc00ag"
    container_name       = "terraform-states"
    key                  = "terraform/terraform.tfstate"

    subscription_id = var.azure_subscription_id
    tenant_id       = var.azure_tenant_id
    client_id       = var.azure_client_id
    client_secret   = var.azure_client_secret
  }
}