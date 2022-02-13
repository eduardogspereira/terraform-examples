module "pandero" {
  source                = "./modules/tfe_stack"
  stack_name            = "pandero"
  organisation_id       = tfe_organization.applications.id
  oauth_token_id        = tfe_oauth_client.oauth_eduardogspereira.oauth_token_id
  aws_access_key_id     = var.aws_access_key_id
  aws_secret_access_key = var.aws_secret_access_key
}

module "violao" {
  source                = "./modules/tfe_stack"
  stack_name            = "violao"
  organisation_id       = tfe_organization.applications.id
  oauth_token_id        = tfe_oauth_client.oauth_eduardogspereira.oauth_token_id
  aws_access_key_id     = var.aws_access_key_id
  aws_secret_access_key = var.aws_secret_access_key
}

module "gaita" {
  source                = "./modules/tfe_stack"
  stack_name            = "gaita"
  organisation_id       = tfe_organization.applications.id
  oauth_token_id        = tfe_oauth_client.oauth_eduardogspereira.oauth_token_id
  aws_access_key_id     = var.aws_access_key_id
  aws_secret_access_key = var.aws_secret_access_key
}

module "cavaquinho" {
  source                = "./modules/tfe_stack"
  stack_name            = "cavaquinho"
  organisation_id       = tfe_organization.applications.id
  oauth_token_id        = tfe_oauth_client.oauth_eduardogspereira.oauth_token_id
  aws_access_key_id     = var.aws_access_key_id
  aws_secret_access_key = var.aws_secret_access_key
}
