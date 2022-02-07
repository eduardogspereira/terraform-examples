resource aws_iam_group "sysadmin" {
  name = "sysadmin"
}

resource aws_iam_group_membership "sysadmin_users" {
  name  = "sysadmin_users"
  group = aws_iam_group.sysadmin.id

  users = [
  for user in aws_iam_user.sysadmin_user : user.name
  ]
}

resource "aws_iam_group" "developer" {
  name = "developer"
}

resource aws_iam_group_membership "developer_users" {
  name  = "developer_users"
  group = aws_iam_group.developer.id

  users = [
  for user in aws_iam_user.developer_user : user.name
  ]
}

resource "aws_iam_group" "business_analyst" {
  name = "business_analyst"
}

resource aws_iam_group_membership "business_analyst_users" {
  name  = "business_analyst_users"
  group = aws_iam_group.business_analyst.id

  users = [
  for user in aws_iam_user.business_analyst_user : user.name
  ]
}

resource aws_iam_group "company" {
  name = "company"
}

resource aws_iam_group_membership "company_users" {
  name  = "company_users"
  group = aws_iam_group.company.id

  users = concat([
  for user in aws_iam_user.developer_user : user.name
  ], [
  for user in aws_iam_user.business_analyst_user : user.name
  ], [
  for user in aws_iam_user.sysadmin_user : user.name
  ]
  )
}
