variable "resource_group_name" {
  type        = string
  description = "Resoruce Group Name"
  default     = "HelloWorld"
}

variable "location" {
  type        = string
  default     = "Canada Central"
  description = "Location of the resource"
}

variable "tags" {
  type        = map(string)
  description = "Targs used for the deployment"
  default = {
    "Environment" = "Lab"
    "Owner"       = "Md Mahibul Hasan"
  }
}

variable "vnet_name" {
  type        = string
  description = "Vnet Name"
  default     = "VnetTFFrist"

}

variable "vnet_address_space" {
  type        = list(any)
  description = "The address space of vnet"
  default     = ["10.13.0.0/16"]
}

variable "subnets" {
  type        = map(any)
  description = "Subnets inside the VNET"
  default = {
    subnet_1 = {
      name             = "subnet_1"
      address_prefixes = ["10.13.1.0/24"]
    }
    subnet_2 = {
      name             = "subnet_2"
      address_prefixes = ["10.13.2.0/24"]
    }
    subnet_3 = {
      name             = "subnet_3"
      address_prefixes = ["10.13.3.0/24"]
    }
    #The name must be AzureBastionSubnet
    bastion_subnet = {
      name             = "AzureBastionSubnet"
      address_prefixes = ["10.13.250.0/24"]
    }
  }
}

variable "bastionhost_name" {
  type = string
  description = "Bastion Host Name"
  default = "BastionHost"
}


