variable "rg_backend_name" {
    type = string
    description = "Name of the Resource Group for the backend"
}

variable "rg_backend_location" {
    type = string
    description = "Location of the Resource Group for the backend"
}

variable "sa_backend_name" {
    type = string
    description = "Name of the Storage Account for the backend"
}

variable "sc_backend_name" {
    type = string
    description = "Name of the Storage Container for the backend"
}

variable "kv_backend_name" {
    type = string
    description = "Name of the Key Vault for the backend"
}

variable "sa_backend_accesskey_name" {
    type = string
    description = "Name of the Storage Account access key for the backend"
}