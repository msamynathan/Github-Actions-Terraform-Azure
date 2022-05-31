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

 resource   "azurerm_resource_group"   "rg"   { 
   name   =   "my-third-terraform-rg" 
   location   =   "eastus2" 
 } 

 resource   "azurerm_resource_group"   "rg"   { 
   name   =   "my-fourth-terraform-rg" 
   location   =   "eastus2" 
 } 