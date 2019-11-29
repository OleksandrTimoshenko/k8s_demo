provider "azurerm" {
   # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
   version = "~>1.5"

   subscription_id = "${var.subscription_id}"
   client_id       = "${var.client_id }"
   client_secret   = "${var.client_secret}"
   tenant_id       = "${var.tenant_id}"
}

terraform {
  backend "azurerm" {
    storage_account_name  = "csbca02541675a2x4c58xb1a"
    container_name        = "tfstate1"
    key                   = "codelab.microsoft.tfstate"
  }
}
