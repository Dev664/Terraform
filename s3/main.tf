terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Create an S3 bucket
resource "aws_s3_bucket" "db12_bucket" {
  bucket = "db12"

  tags = {
    Name        = "db12"
    Environment = "Dev"
  }
}
