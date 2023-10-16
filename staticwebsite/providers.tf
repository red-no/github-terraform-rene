terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "3.75.0"
        }
    }

        backend "azurerm" {
        resource_group_name  = "rg-backend-tfstate-remei"               # må være kjent
        storage_account_name = "satfstateremei9hdsbq7hez"               # må være kjent
        container_name       = "sctfstateremei"                         # må være kjent
        key                  = "staticwebsite-remei.terraform.tfstate"  # må være hardcodet
    }
}

provider "azurerm" {
    features {
        key_vault {
            purge_soft_delete_on_destroy    = true
            recover_soft_deleted_key_vaults = true
        }
    }
}