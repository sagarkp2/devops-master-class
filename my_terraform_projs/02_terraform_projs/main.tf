variable "aws_iam_users_variable" {
  type    = any #number, string, bool, map, list, set, object, tuple
  default = "secondary_iam_user"
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
  count = 0
  name  = "${var.aws_iam_users_variable}_${count.index}"
}