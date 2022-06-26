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
   resource_group_name      = data.azurerm_resource_group.test-for-delete.name
 }

 data "azurerm_subnet" "datalake" {
   name = "Subnet1"
   resource_group_name      = data.azurerm_resource_group.test-for-delete.name
   virtual_network_name = data.azurerm_virtual_network.datalake.name
 }

 resource "azurerm_storage_account" "datalake" {
  name                     = "adlsrawforsynapse"
  resource_group_name      = data.azurerm_resource_group.test-for-delete.name
  location                 = "East US"
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