terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9e0debd3-3a57-4a43-b54d-9800873e27cf"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG3"
    storage_account_name = "jenkinsstaterob"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG2"
  location = "westeurope"
}
