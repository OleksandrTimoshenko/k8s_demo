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
