variable "vm-map" {
  type = map(object({
    pipName          = string
    nicName          = string
    ip_configuration = string
    vmName           = string
    size             = string
    })
  )
}

resource "azurerm_public_ip" "pip" {
  count = var.createPIP ? 1 : 0
  for_each            = var.vm-map
  name                = each.value.pimpvm1
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Dynamic"
}

resource "azurerm_network_interface" "nic" {
  for_each            = var.vm-map
  name                = each.value.nicvm1
  resource_group_name = var.location
  location            = var.location
  ip_configuration {
    name                          = each.value.ipconfigname
    subnet_id                     = data.azurerm_subnet.AccSubnet1.id
    private_ip_address_allocation = "Static"
    private_ip_address            = optional()
  }
}

# resource "azurerm_linux_virtual_machine" "vms" {
#   for_each            = var.vm-map
#   name                = each.value.vmName
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   size                = each.value.size
#   admin_username      = "vmAdmin"
#   admin_password      = "Madina@786"
#   network_interface_ids = [
#     azurerm_network_interface.nic[each.key].id,
#   ]


#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }

# }
