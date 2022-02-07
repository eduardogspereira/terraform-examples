terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.1.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "random" {}

resource "random_uuid" "test" {
}

resource "aws_s3_bucket" "sample" {
  bucket = "sample-${random_uuid.test.result}"
  acl    = "private"
}
