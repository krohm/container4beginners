resource "azurerm_container_registry" "acr" {
  name                     = "lx${var.index}"
  resource_group_name      = "BASF_RG_LAB_${var.index}"
  location                 = "WestEurope"
  sku                      = "Standard"
  admin_enabled            = true
}