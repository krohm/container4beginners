terraform {
  

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.50"
      skip_provider_registration = true
    }
    random = {
      source = "hashicorp/random"
    }
  }
  required_version = ">= 0.14"
}

provider "azurerm" {
  # Configuration options
  # See https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
  # https://github.com/terraform-providers/terraform-provider-azurerm
  
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }

  }
}
