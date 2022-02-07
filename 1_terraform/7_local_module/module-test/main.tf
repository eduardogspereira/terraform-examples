variable "random_count" {
  type    = number
  default = 25
}

resource "random_uuid" "test" {
  count = var.random_count
}

output "test_random_uuid_values" {
  value       = random_uuid.test[*].result
  description = "Random values created with random_uuid"
}
