provider "azurerm" {
  features {
    
  }
  subscription_id = "d9e01e7b-eb87-4e77-b4d7-5ebea9363dae"

}

terraform {
  backend "azurerm" {
    resource_group_name = "B16G18_RG"
    storage_account_name = "b16g18storage"
    container_name = "nayalink"
    key = "acc.Terrafom.tfstate"
  }
}

provider "random" {}

# terraform {
#   backend "LAaccounts" {
#    resource_group_name  = "StorageAccount-ResourceGroup"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
#     storage_account_name = "abcd1234"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
#     container_name       = "tfstate"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
#     key                  = "prod.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
#   }
# }