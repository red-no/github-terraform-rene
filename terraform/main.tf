locals {
    worksspaces_suffix = terraform.workspace == "default" ? "" : "${terraform.workspace}"
    rg_name = "${var.rg_name}-${local.worksspaces_suffix}"
}

resource "azurerm_resource_group" "rg-remei" {
    name     = local.rg_name
    location = var.rg_location
}

output "rg_name" {
    value = azurerm_resource_group.rg-remei
}