/**
 * # base
 *
 * This module manages the azurerm base resources, see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs.
 *
 * For more information about the module structure see https://telekom-mms.github.io/terraform-template.
 *
 */

resource "azurerm_resource_group" "resource_group" {
  # ts:skip=AC_AZURE_0389 Resource Lock is not managed by this module
  for_each = var.resource_group

  name       = local.resource_group[each.key].name == "" ? each.key : local.resource_group[each.key].name
  location   = local.resource_group[each.key].location
  managed_by = local.resource_group[each.key].managed_by
  tags       = local.resource_group[each.key].tags
}
