resource "tfe_workspace" "random_application" {
  name               = "${var.stack_name}-random-application"
  organization       = var.organisation_id
  allow_destroy_plan = true
  auto_apply         = true
  execution_mode     = "remote"
  working_directory  = "1_terraform/11_terraform_stacks/1_random_application"

  vcs_repo {
    identifier     = "eduardogspereira/terraform-examples"
    oauth_token_id = var.oauth_token_id
  }
}


resource "tfe_variable" "aws_access_key_id" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  workspace_id = tfe_workspace.random_application.id
  sensitive    = true
}

resource "tfe_variable" "aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  workspace_id = tfe_workspace.random_application.id
  sensitive    = true
}
