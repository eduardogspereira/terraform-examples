module "pandero" {
  source              = "./modules/tfe_stack"
  stack_name          = "pandero"
  organisation_id     = tfe_organization.applications.id
  environment_secrets = var.environment_secrets
  oauth_token_id      = tfe_oauth_client.oauth_eduardogspereira.oauth_token_id
}
