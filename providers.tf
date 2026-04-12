terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-shaun"
    storage_account_name = "sttfstateshaun7823"
    container_name       = "tfstate"
    key                  = "project1.terraform.tfstate"
  }

  # required_providers block as before...
}

