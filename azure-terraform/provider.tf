
provider "azurerm" {
}

resource "azurerm_resource_group" "terraform" {
  name     = "terraform"
  location = "North Europe"
}
