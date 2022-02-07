terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

locals {
  common_tags = {
    Owner = "TeamA"
  }
}

resource "aws_s3_bucket" "hello_world" {
  bucket = "hello-world-asdfeaafbcafdeasa"
  acl    = "private"

  tags = merge({
    BucketRandomData = "random-data",
  }, local.common_tags)
}

output "hello_world_arn" {
  value = aws_s3_bucket.hello_world.arn
}
