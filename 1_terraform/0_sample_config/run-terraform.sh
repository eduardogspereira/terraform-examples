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

execute_destroy() {
  echo "Executing \"terraform destroy\"" && sleep 3
  terraform destroy
}

execute_plan
prompt_user "Do you want proceed to \"terraform apply\"?"
execute_apply
prompt_user "Should I destroy the resources with \"terraform destroy\"?"
execute_destroy
