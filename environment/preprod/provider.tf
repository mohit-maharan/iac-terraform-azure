terraform {
  required_version = ">= 1.12.2"

  # backend "azurerm" {
  #   resource_group_name  = "saini-rg"
  #   storage_account_name = "sainistorage"
  #   container_name       = "tfstate"
  #   key                  = "preprod.terraform.tfstate"
  # }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {

  features {}

  subscription_id = "f0cb494b-a275-45f4-895c-33af48053122"

}