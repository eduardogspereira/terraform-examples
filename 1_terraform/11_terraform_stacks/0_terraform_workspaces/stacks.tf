module "pandero" {
  source                = "./modules/tfe_stack"
  stack_name            = "pandero"
  organisation_id       = tfe_organization.applications.id
  oauth_token_id        = tfe_oauth_client.oauth_eduardogspereira.oauth_token_id
  aws_access_key_id     = var.aws_access_key_id
  aws_secret_access_key = var.aws_secret_access_key
}
