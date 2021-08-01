variable "names" {
  # type    = any #number, string, bool, map, list, set, object, tuple
  # default = ["sagar02", "dude03" ,"girl04"]
  default = ["coolio","haha", "sagar02", "dude03" ,"girl04"]
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
  # count = length(var.names)
  # name  = var.names[count.index]
  for_each = toset(var.names)
  name = each.value
}