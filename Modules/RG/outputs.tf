# already created resource if we need to call information/data of already created resource
# data "azurerm_resource_group" "rg" {
#   name = "Accounts"
# }

# #############

# after creation asiging to value to other blocks 

output "rg-name" {
    value = azurerm_resource_group.rg.name
}

output "rg-location" {
    value = azurerm_resource_group.rg.location
}