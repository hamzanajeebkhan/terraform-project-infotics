terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

# resource "aws_s3_bucket" "hamza" {
#   bucket = "my-tf-test-bucket-for-hamza"

#   tags = {
#     Name        = "Hamza bucket"
#     Environment = "Dev"
#     Demo        = "True"
#   }
# }

module "website_s3_bucket" {
  source = "../modules/s3_static_website"

  bucket_prefix = "infotic-work-test-"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
