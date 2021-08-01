variable "users" {

  default = {
    # sameer:"India",
    # sakir:"Japan"
    sameer : { country : "India", departmnet : "abc" },
    sakir : { country : "Japan", departmnet : "def" }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.47.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_iam_user" "my_iam_users" {
  for_each = var.users
  name     = each.key
  tags = {
    # country = each.value
    country    = each.value.country
    departmnet = each.value.departmnet
  }
}