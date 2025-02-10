terraform {
  backend "azurerm" {
    resource_group_name  = "AG-resource-group"
    storage_account_name = "storageacc00ag"
    container_name       = "terraform-states"
    key                  = "terraform/terraform.tfstate"
  }
}