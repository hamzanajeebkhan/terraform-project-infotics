terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "hamza" {
  bucket = "my-tf-test-bucket-for-hamza"

  tags = {
    Name        = "Hamza bucket"
    Environment = "Dev"
  }
}