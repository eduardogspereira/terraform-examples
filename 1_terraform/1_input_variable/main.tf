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

variable bucket_name {
  type        = string
  description = "The name of the bucket"
  sensitive   = true

  validation {
    condition     = length(var.bucket_name) > 5
    error_message = "The variable \"bucket_name\" should contain at least 5 characters."
  }
}

variable bucket_private {
  type        = bool
  description = "If the bucket should be private"
  default     = false
}

resource "aws_s3_bucket" "hello_world" {
  bucket = var.bucket_name
  acl    = var.bucket_private ? "private" : "public-read"
}
