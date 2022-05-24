provider "azurerm" {
}

resource "azuerrm_resource_group" "rg1"
name = "tftestrg01"
location = "westus"

terraform init
terraform apply
