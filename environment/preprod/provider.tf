terraform {
  required_version = ">= 1.12.2"


  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {

  features {}
  subscription_id = var.subscription_id

}
provider "http" {
  # Configuration options for the HTTP provider
}
