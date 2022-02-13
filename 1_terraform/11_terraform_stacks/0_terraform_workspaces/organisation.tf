resource "tfe_organization" "applications" {
  name  = var.organisation_name
  email = "edu_vcd@hotmail.com"
}

resource "tfe_oauth_client" "oauth_eduardogspereira" {
  organization     = tfe_organization.applications.name
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.github_oauth_token
  service_provider = "github"
}
