terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
  }
}

provider "random" {}

resource "random_uuid" "test" {
  count = 25
}

output "test_random_uuid_values" {
  value       = random_uuid.test[*].result
  description = "Print the values created with random_uuid"
}
