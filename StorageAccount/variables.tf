variable "base_name" {
    type = string
    description = "Base Name of this Module"
    default = "TerraformExample101"  
}

variable "resource_group_name" {
    type = string
    description = "Name of the resource group"  
}

variable "location" {
    type = string
    description = "Location of this Module"
    default = "Canada East"
}