
# resource "azurerm_resource_group" "rg" {
#     for_each = var.rg-map
# name = each.value.name
# location = each.value.location
# tags = each.value.tags
  
# }

# variable "createRG" {
#     type = bool
# }


# resource "azurerm_resource_group" "rg" {
#  count = var.createRG ? 1 : 0
#  name = "naya-${count.index+1}"
#  location = "ukwest"
# }

resource "azurerm_resource_group" "rg" {
  name = var.name
  location = var.location
}