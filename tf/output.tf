output "Readme0" {value ="Command to Login into Docker Registry"}
output "Readme1" {value ="docker login ${azurerm_container_registry.acr.login_server} -u ${azurerm_container_registry.acr.admin_username} -p ${azurerm_container_registry.acr.admin_password}" sensitive   = false}
