rg-map = {
 rg1={
  name="dev-rg-tech"
  location="westus"
  tags={
    env=""
    comapany=""
  }
 }
 rg2={
  name=""
  location=""
  
 }
}

createRG = false
createPIP = false

vent-map = {
  vent1 = {

    name          = "AccVnet1"
    address_space = ["10.0.0.0/16"]

    subnets = {
      subnet1 = {
        name             = "AccSubnet1"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet2 = {
        name             = "AccSubnet2"
        address_prefixes = ["10.0.2.0/24"]
      }
      subnet3 = {
        name             = "AccSubnet3"
        address_prefixes = ["10.0.3.0/24"]
      }

    }

  }

  vent2 = {

    name          = "AccVnet2"
    address_space = ["10.1.0.0/16"]

    subnets = {
      subnet1 = {
        name             = "AccSubnet1"
        address_prefixes = ["10.1.1.0/24"]
      }
      subnet2 = {
        name             = "AccSubnet2"
        address_prefixes = ["10.1.2.0/24"]
      }

    }

  }
}

vm-map = {
  vm1 = {
    pipName      = "pipvm1"
    nicName      = "nicvm1"
    ipconfigname = "nicipconfiq"
    vmName       = "inventory"
    size         = "Standard_B1s"
  }
}
