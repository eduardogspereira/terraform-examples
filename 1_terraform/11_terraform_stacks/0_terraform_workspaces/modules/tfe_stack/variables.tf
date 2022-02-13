variable organisation_id {
  type = string
}

variable oauth_token_id {
  type = string
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

variable stack_name {
  type = string

  validation {
    condition     = length(var.stack_name) > 0
    error_message = "The stack_name variable cannot be empty."
  }
}

