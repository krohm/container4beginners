# Create an App Service Plan with Linux
resource "azurerm_app_service_plan" "appserviceplan" {
  name                = "asp"
  location            = "WestEurope"
  resource_group_name = "BASF_RG_LAB_${var.index}"

  # Define Linux as Host OS
  kind = "Linux"

  # Choose size
  sku {
    tier = "Standard"
    size = "S1"
  }

  
    reserved = true # Mandatory for Linux plans
  
}

# Create an Azure Web App for Containers in that App Service Plan
resource "azurerm_app_service" "dockerapp" {
   name                = "dockerapp-${lower(substr(sha256(azurerm_app_service_plan.appserviceplan.id), 0, 6))}"

  location            = "WestEurope"
  resource_group_name = "BASF_RG_LAB_${var.index}"
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id

  # Do not attach Storage by default
  app_settings= {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = false

    
    # Settings for private Container Registries  
    DOCKER_REGISTRY_SERVER_URL      = "https://${azurerm_container_registry.acr.name}.azurecr.io"
    DOCKER_REGISTRY_SERVER_USERNAME = azurerm_container_registry.acr.admin_username
    DOCKER_REGISTRY_SERVER_PASSWORD = azurerm_container_registry.acr.admin_password
    WEBSITES_PORT=8080
  
    
  }

  # Configure Docker Image to load on start
  site_config {
    linux_fx_version = "DOCKER|appsvcsample/static-site:latest"
    always_on        = "true"
  } 
}