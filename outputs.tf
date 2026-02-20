output "resource_group" {
  description = "Outputs all attributes of azurerm_resource_group."
  value = {
    for resource_group in keys(azurerm_resource_group.resource_group) :
    resource_group => {
      for key, value in azurerm_resource_group.resource_group[resource_group] :
      key => value
    }
  }
}

output "variables" {
  description = "Displays all configurable variables passed by the module. __default__ = predefined values per module. __merged__ = result of merging the default values and custom values passed to the module"
  value = {
    default = {
      for variable in keys(local.default) :
      variable => local.default[variable]
    }
    merged = {
      resource_group = {
        for key in keys(var.resource_group) :
        key => local.resource_group[key]
      }
    }
  }
}
