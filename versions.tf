terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "< 5.12"
    }
  }
  required_version = ">= 1.5"
}
