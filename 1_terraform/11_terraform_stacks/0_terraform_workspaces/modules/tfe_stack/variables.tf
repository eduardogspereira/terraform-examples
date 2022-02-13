variable organisation_id {
  type = string
}

variable organisation_name {
  type = string
}

variable github_oauth_token {
  type = string
}

variable stack_name {
  type = string

  validation {
    condition     = length(var.stack_name) > 0
    error_message = "The stack_name variable cannot be empty."
  }
}

variable environment_secrets {
  type = object({})
}
