resource "tfe_workspace" "random_application" {
  name         = "${var.stack_name}-random-application"
  organization = var.organisation_id
}
