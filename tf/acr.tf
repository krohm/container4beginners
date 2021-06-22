resource "azurerm_container_registry" "acr" {
  name                     = "acr-${var.index}-${lower(substr(sha256(azurerm_app_service_plan.appserviceplan.id), 0, 6))}"
  resource_group_name      = "BASF_RG_LAB_${var.index}"
  location                 = "WestEurope"
  sku                      = "Standard"
  admin_enabled            = true
}