variable "resource_group_name" {
  default = "rg-appgw-demo"
}

variable "location" {
  default = "East US"
}

variable "admin_username" {
  default = "vikas"
}

variable "admin_password" {
  default     = "P@ssword1234!"
  sensitive   = true
}
