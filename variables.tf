variable "resource_group" {
  type        = any
  default     = {}
  description = "Resource definition, default settings are defined within locals and merged with var settings. For more information look at [Outputs](#Outputs)."
}

locals {
  default = {
    // resource definition
    resource_group = {
      name       = ""
      location   = "westeurope"
      managed_by = null
      tags       = {}
    }
  }

  // compare and merge custom and default values
  resource_group = {
    for resource_group in keys(var.resource_group) :
    resource_group => merge(local.default.resource_group, var.resource_group[resource_group])
  }
}
