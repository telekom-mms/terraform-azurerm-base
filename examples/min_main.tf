module "base" {
  source = "registry.terraform.io/telekom-mms/base/azurerm"

  resource_group = {
    rg-mms-github = {
      location   = "westeurope"
    }
  }
}