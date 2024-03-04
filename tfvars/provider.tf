terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.38.0"
    }
  }
 backend "s3" {
#    bucket = "value"
#    key = "value"
#    region = "us-east-1"
#    dynamodb_table = "value"
   }
}

provider "aws" {
  region = "us-east-1"
}