terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.74.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "hello_world" {
  bucket = "hello-world-asdfeaafbcafdeasa"
  acl    = "private"

  tags = {
    Owner = "TeamA"
  }
}

output "hello_world_arn" {
  value = aws_s3_bucket.hello_world.arn
}
