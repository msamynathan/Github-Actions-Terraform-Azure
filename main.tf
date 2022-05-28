terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformDemo"
    storage_account_name = "terraformcodeops2"
    container_name       = "tfstatefile"
    key                  = "terraformgithubexample.tfstate"
  }
}
 
provider "azurerm" {
version = "=2.0.0"
features {}
}
 
#Create Resource Group
resource "azurerm_resource_group" "tamops" {
  name     = "tamops"
  location = "eastus2"
}
