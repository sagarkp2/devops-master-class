terraform {
  backend "s3" {
    bucket = "dev-myskapp-backend"
    # key            = "07-backend-state-users-dev"
    key            = "dev/07-backend-state/users/cloudstate"
    region         = "us-east-1"
    dynamodb_table = "dev-myskapp-db-locks"
    encrypt        = true
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

resource "aws_iam_user" "my_iam_user" {
  name = "user_abc"
}
