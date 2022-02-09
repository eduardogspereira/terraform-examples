terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-state-acd2e031-221e-41"
    key            = "estado"
    region         = "us-east-1"
    dynamodb_table = "tf-lock-example"
  }
}

resource "random_uuid" "sample" {}
