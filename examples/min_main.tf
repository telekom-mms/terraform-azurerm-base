module "base" {
  source = "registry.terraform.io/telekom-mms/base/azurerm"

  # ts:skip=AC_AZURE_0389 Resource Lock is not managed by this module
  resource_group = {
    rg-mms-github = {
      location = "westeurope"
    }
  }
}