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


