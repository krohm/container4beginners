resource "azurerm_container_registry" "acr" {
  name                     = "lx00<index>"
  resource_group_name      = "BASF_RG_LAB_00<index>"
  location                 = "WestEurope"
  sku                      = "Standard"
  admin_enabled            = true
}