variable "createPIP" {
  type = bool
}
variable "resource_group_name" {}
variable "location" {}

data "azurerm_subnet" "subnet" {
  name = "AccSubnet1"
  virtual_network_name = "AccVnet1"
  resource_group_name = var.resource_group_name
}

resource "azurerm_public_ip" "pip" {
    count = var.createPIP ? 1: 0
    name = "newPIP-${var.resource_group_name}"
    location = var.location
    resource_group_name = var.resource_group_name
    allocation_method = "Static"
}

resource "azurerm_network_interface" "nic" {
  name = "nayaNIC-${var.resource_group_name}"
  location = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
    name = "ip_configuration-${var.resource_group_name}"
    subnet_id = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = var.createPIP ? azurerm_public_ip.pip[0].id : null

  }
}