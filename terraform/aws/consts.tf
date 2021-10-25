
data "aws_caller_identity" "current" {}

variable "company_name" {
  default = "mmani"
}

variable "environment" {
  default = "mmanidevsecops"
}

locals {
  resource_prefix = {
    value = "${data.aws_caller_identity.current.account_id}-${var.company_name}-${var.environment}"
  }
}



variable "profile" {
  default = "default"
}

variable "region" {
  default = "us-west-2"
}

variable "availability_zone" {
  type    = string
  default = "us-west-2a"
}

variable "availability_zone2" {
  type    = string
  default = "us-west-2b"
}


variable ami {
  type    = string
  default = "ami-04b762b4289fba92b"
}

variable "dbname" {
  type        = string
  description = "Name of the Database"
  default     = "db1"
}

variable "password" {
  type        = string
  description = "Database password"
  default     = "Aa1234321Bb"
}
