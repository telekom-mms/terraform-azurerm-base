module "base" {
  source = "registry.terraform.io/telekom-mms/base/azurerm"

  resource_group = {
    rg-mms-github = {
      location   = "westeurope"
      managed_by = "opentofu"
      tags = {
        project     = "mms-github"
        environment = terraform.workspace
        managed-by  = "opentofu"
      }
    }
  }
}
