module "module-test" {
  source  = "app.terraform.io/eduardogspereira/module-test/registry"
  version = "0.0.2"
}
/*
This would be the import if the module was public
*/
#module "module-test" {
#  source  = "eduardogspereira/module-test/registry"
#  version = "0.0.2"
#}

output "values" {
  value = module.module-test.test_random_uuid_values
}
