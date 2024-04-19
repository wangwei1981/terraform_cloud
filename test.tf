variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "accesskey" {
  type    = string
  default = ""
}

variable "secretkey" {
  type    = string
  default = ""
}

data "aws_availability_zones" "available" {}

locals {
  azs = slice(data.aws_availability_zones.available.names, 0, 3)
}

output "azs" {
  value = local.azs
}

