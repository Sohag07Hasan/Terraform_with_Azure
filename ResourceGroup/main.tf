resource "azurerm_resource_group" "rsg_group" {
  name     = "${var.base_name}RG"
  location = var.location
}