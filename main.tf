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

 data   "azurerm_resource_group"   "rg"   { 
   name   =   "my-third-terraform-rg" 
   location   =   "eastus2" 
 } 

 resource   "azurerm_resource_group"   "rg5"   { 
   name   =   "my-fifth-terraform-rg" 
   location   =   "eastus2" 
 } 

  resource   "azurerm_resource_group"   "rg6"   { 
   name   =   "my-sixth-terraform-rg" 
   location   =   "eastus2" 
 } 