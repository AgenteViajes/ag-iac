variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
  default     = "AG-resource-group"
}

variable "location" {
  description = "Ubicación asociada al proyecto en Azure"
  type        = string
  default     = "eastus2"
}

variable "tags_ag" {
  type = map(string)
  default = {
    environment = "prod"
    source      = "terraform"
    app_prefix  = "ag"
  }
}

variable "repository_branch" {
  type    = string
  default = "master"
}

variable "web_ui_repository_token" {
  type    = string
  default = ""
}

variable "web_ui_repository_url" {
  type    = string
  default = "https://github.com/AgenteViajes/ag-web-ui"
}

variable "azure_subscription_id" {
  type    = string
  default = ""
}

variable "azure_tenant_id" {
  type    = string
  default = ""
}

variable "azure_client_id" {
  type    = string
  default = ""
}

variable "azure_client_secret" {
  type    = string
  default = ""
}

variable "storage_account_name" {
  type    = string
  default = "storageacc00ag"
}

variable "tf_storage_container_name" {
  type    = string
  default = "terraform-states"
}
