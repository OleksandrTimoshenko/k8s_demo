
provider "azurerm" {
  Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "~>1.5"
  profile = "StorageV2"
}


terraform {
  backend "azurerm" {
    storage_account_name  = "tstate3035"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
    access_key            = "IKOMl75YFz1+DmZboIq9bdxgeSGcRXSSNwkXplsnCWRceSz3zViFqlFOZnYYI8gyT3uyh+KAZ/IWTy8id06Gjw=="
  }
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}
