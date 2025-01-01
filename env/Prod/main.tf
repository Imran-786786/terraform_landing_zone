

module "rg" {
  source = "../../Modules/RG"
 name = "naya"
 location = "uksouth"
 #createRG = var.createRG
}



module "Netowork" {
  source = "../../Modules/Netowork"
  vent-map = var.vent-map
 resource_group_name = module.rg.rg-name
 location = module.rg.rg-location
}

module "nic" {
  depends_on = [ module.Netowork ]
  source = "../../Modules/NIC"
  resource_group_name = module.rg.rg-name
 location = module.rg.rg-location
  createPIP = var.createPIP
}

# # }

# # module "publicIp" {
# #   source = "../../Modules/Public_IP"
# #   nam = "publicIp"
# #   resource_group_name = module.rg.rg-name
# #   location = module.rg.rg-location
  
# }
# module "VMs" {
#   source = "../../Modules/VMs"
#   vm-map = var.vm-map
#   resource_group_nam = module.rg.rg-name
#   location = module.rg.rg-location
# }
