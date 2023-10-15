terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}

provider "aws" {
        region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "sammybuvleit.com"

  tags = {
    Name        = "My bucket"
  }
}
