resource aws_iam_policy "disallow_password_change" {
  name = "disallow_password_change"

  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Action   = [
          "iam:ChangePassword",
        ]
        Effect   = "Deny"
        Resource = "*"
      },
    ]
  })
}

resource aws_iam_policy_attachment "disallow_password_change_attachment" {
  name       = "disallow_password_change_attachment"
  policy_arn = aws_iam_policy.disallow_password_change.arn
  groups     = [
    aws_iam_group.business_analyst.name,
    aws_iam_group.developer.name,
  ]
}

resource aws_iam_policy "allow_password_change" {
  name = "allow_password_change"

  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Action   = [
          "iam:ChangePassword",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource aws_iam_policy_attachment "allow_password_change_attachment" {
  name       = "allow_password_change_attachment"
  policy_arn = aws_iam_policy.allow_password_change.arn
  groups     = [
    aws_iam_group.sysadmin.name
  ]
}
