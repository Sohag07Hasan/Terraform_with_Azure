variable "location" {
  type = string
  description = "The location for the deployment"
  default = "Canada Central"
}

variable "rsgname" {
    type = string
    description = "Resoruce Group Name"
    default = "TerraformRG"  
}

variable "stgname" {
    type = string
    description = "Storage Account Name"      
}
