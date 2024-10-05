terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
   backend "s3" {
    bucket = "vpc-lock-1225"
    key    = "expense-2.2"
    region = "us-east-1"
    dynamodb_table = "vpc_lock"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}