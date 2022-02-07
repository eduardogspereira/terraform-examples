module "module-test" {
  source  = "app.terraform.io/eduardogspereira/module-test/registry"
  version = "0.0.2"
}

output "values" {
  value = module.module-test.test_random_uuid_values
}
