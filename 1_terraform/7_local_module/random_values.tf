module "generate-random-values" {
  source       = "./module-test"
  random_count = 50
}

output "uuid-values" {
  value = module.generate-random-values.test_random_uuid_values
}
