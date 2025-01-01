

resource "azurerm_public_ip" "pip" {
  name = "publcinIp"
  location = var.location
  resource_group_name = var.resource_group_name
  allocation_method = "Static"
  }

