module "network" {
  source  = "app.terraform.io/chip-cert/network/azurerm"
  version = "3.5.0"
  
  resource_group_name = "kylebetts-workshop"
  address_spaces      = ["10.0.10.0/16"]
  subnet_prefixes     = ["10.0.10.0/24"]
  subnet_names        = ["chip-subnet"]
  subnet_service_endpoints = {
    "chip-subnet" : ["Microsoft.Sql"]
  }
  tags = {
    Department = "dev"
    Billable  = "true"
  }
}