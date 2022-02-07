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

variable allowed_ports {
  type    = list(number)
  default = [22, 80, 443]
}

resource "aws_security_group" "dynamic-block-sample" {
  name        = "dynamic-block-sample"

  dynamic ingress {
    for_each = var.allowed_ports
    iterator = port
    content {
      from_port = port.value
      to_port = port.value
      protocol  = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }
}
