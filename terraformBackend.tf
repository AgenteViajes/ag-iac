terraform {
  backend "azurerm" {
    resource_group_name  = "AG-resource-group"
    storage_account_name = "storageacc00ag"
    container_name       = "terraform-states"
    key                  = "terraform/terraform.tfstate"

    client_id       = var.client_id
    client_secret   = var.client_secret
    subscription_id = var.subscription_id
    tenant_id       = var.tenant_id
  }
}

variable "azure_client_id" {
  type = string
}

variable "azure_client_secret" {
  type = string
  sensitive = true
}

variable "azure_subscription_id" {
  type = string
}

variable "azure_tenant_id" {
  type = string
}