resource aws_iam_user "sysadmin_user" {
  count = 4
  name  = "sysadmin_users_${count.index}"
}

resource aws_iam_user "developer_user" {
  count = 10
  name  = "developers_${count.index}"
}

resource aws_iam_user "business_analyst_user" {
  count = 5
  name  = "business_users_${count.index}"
}
