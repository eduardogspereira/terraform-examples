variable organisation_name {
  default = "applications-egsp-org"
  type    = string
}

variable aws_access_key_id {
  default = ""
  type    = string
}

variable aws_secret_access_key {
  default = ""
  type    = string
  sensitive = true
}

variable github_oauth_token {
  default   = ""
  type      = string
  sensitive = true
}
