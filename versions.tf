terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "< 5.10"
    }
  }
  required_version = ">= 1.5"
}
