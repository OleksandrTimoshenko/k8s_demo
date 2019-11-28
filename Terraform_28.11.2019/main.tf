provider "azurerm" {
   # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
   version = "~>1.5"
   # profile = "StorageV2"
}

terraform {
  backend "azurerm" {
    storage_account_name  = "csbca02541675a2x4c58xb1a"
    container_name        = "tfstate"
    key                   = "codelab.microsoft.tfstate"
  }
}