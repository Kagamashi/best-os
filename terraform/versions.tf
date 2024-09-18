terraform {
  required_version = ">= 1.9.6"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0.1"
    }
  }

  backend "local" {
    path = "terraform.tfstate"
  }
}
