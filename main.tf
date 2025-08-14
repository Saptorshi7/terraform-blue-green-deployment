resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    environment = "blue-green"
    owner       = "terraform"
  }
}

# Call network module and pass RG values
module "network" {
  source              = "./modules/network"
  rg_name             = var.resource_group_name
  rg_location         = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes
  subnet_names        = var.subnet_names

  depends_on = [resource.azurerm_resource_group.main]
}