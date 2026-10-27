resource "azurerm_resource_group" "lab" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "lab_vnet" {
  name                = "vnet-terraform-lab01"
  resource_group_name = "rg-terraform-lab01"
  location            = "westeurope"

  address_space = ["10.10.0.0/16"]

  tags = {
    environment = "learning"
    managed_by  = "terraform"
  }
}

resource "azurerm_subnet" "lab_subnet" {
  name                 = "snet-workload"
  resource_group_name  = "rg-terraform-lab01"
  virtual_network_name = azurerm_virtual_network.lab_vnet.name
  address_prefixes     = ["10.10.1.0/24"]
}

resource "azurerm_subnet" "lab_subnet_2" {
  name                 = "snet-workload-two"
  resource_group_name  = "rg-terraform-lab01"
  virtual_network_name = azurerm_virtual_network.lab_vnet.name
  address_prefixes     = ["10.10.2.0/24"]
}

resource "azurerm_subnet" "lab_subnet_3" {
  name                 = "snet-workload-three"
  resource_group_name  = "rg-terraform-lab01"
  virtual_network_name = azurerm_virtual_network.lab_vnet.name
  address_prefixes     = ["10.10.3.0/24"]
}
