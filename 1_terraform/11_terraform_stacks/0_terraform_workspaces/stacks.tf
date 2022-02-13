module "pandero" {
  source              = "./modules/tfe_stack"
  stack_name          = "pandero"
  organisation_id     = tfe_organization.applications.id
  environment_secrets = var.environment_secrets
}
