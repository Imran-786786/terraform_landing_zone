data "azurerm_subnet" "subnet_id" {
  name = "AccSubnet1"
  virtual_network_name = "AccVnet1"
  resource_group_name = "Accounts"
  
}