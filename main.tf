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

 data "azurerm_virtual_network" "datalake" {
   name = "Demo-vNet"
 }

 data "azurerm_subnet" "datalake" {
   name = "Subnet1"
 }

 resource "azurerm_storage_account" "datalake" {
  name                     = "ADLSrawforsynapse"
  resource_group_name      = data.azurerm_resource_group.test-for-delete.name
  #location                 = data.azurerm_resource_group.test-for-delete.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  #tags = {
   # environment = "staging"
  #}
}

#resource "azurerm_private_endpoint" "aldsraw" {
#  name = "aldsraw-private-endpoint"
#  subnet_id = data.azurerm_subnet.datalake.id
#}