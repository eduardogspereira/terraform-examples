#!/usr/bin/zsh

prompt_user() {
  echo
  read -p "$1 " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
      exit 1
  fi
}

execute_plan() {
  echo "Executing \"terraform plan\"" && sleep 3
  terraform plan
}

execute_apply() {
  echo "Executing \"terraform apply\"" && sleep 3
  terraform apply
}

execute_taint() {
  echo "Executing \"terraform taint\"" && sleep 3
  # terraform taint is a deprecated command now. It's better to use
  # the command "$ terraform apply -replace="aws_s3_bucket.sample"
  # with new terraform versions.
  terraform taint "aws_s3_bucket.sample"
}

execute_untaint() {
    echo "Executing \"terraform untaint\"" && sleep 3
    terraform untaint "aws_s3_bucket.sample"
}

execute_destroy() {
  echo "Executing \"terraform destroy\"" && sleep 3
  terraform destroy
}

execute_plan
prompt_user "Do you want proceed to \"terraform apply\"?"
execute_apply
prompt_user "Do you want proceed to \"terraform taint\"?"
execute_taint
prompt_user "Do you want proceed to \"terraform apply\" again?"
execute_apply
prompt_user "Do you want proceed to \"terraform taint\" again?"
execute_taint
prompt_user "Do you want proceed to \"terraform untaint\"?"
execute_untaint
prompt_user "Should I destroy the resources with \"terraform destroy\"?"
execute_destroy
