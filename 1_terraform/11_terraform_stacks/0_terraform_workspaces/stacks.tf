module "pandero" {
  source              = "./modules/tfe_stack"
  stack_name          = "pandero"
  organisation_id     = tfe_organization.applications.id
  organisation_name   = tfe_organization.applications.name
  environment_secrets = var.environment_secrets
  github_oauth_token  = var.github_oauth_token
}
