output "Readme0" {
    value ="Parameters to Login into Docker Registry"
}


output "acr-name" {
    sensitive = false
    value =azurerm_container_registry.acr.login_server
    }
output "acr-username" {
    sensitive = false
    value =azurerm_container_registry.acr.admin_username
    }
output "acr-password" {
    sensitive = false
    value ="Have to be obtained from the Azure Portal"
    }
