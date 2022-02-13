variable organisation_name {
  default = "applications-egsp-org"
  type    = string
}

variable environment_secrets {
  default = {}
  type    = object({})
}

variable github_oauth_token {
  default = ""
  type    = string
}
