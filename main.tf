terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.92.0"
    }
  }
}

provider   "azurerm"   { 
    features   {} 
 } 

# data   "azurerm_resource_group"   "rg"   { 
 #  name   =   "my-third-terraform-rg" 
   #location   =   "eastus2" 
 #} 

   data   "azurerm_resource_group"   "test-for-delete"   { 
   name   =   "Test-for-delete" 
   #location   =   "eastus2" 
 } 