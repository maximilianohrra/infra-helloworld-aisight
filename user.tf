resource "aws_iam_user" "example_user" {
  name = "maximiliano-aisight"
}

resource "aws_iam_access_key" "example_access_key" {
  user = aws_iam_user.example_user.name
}

resource "aws_iam_user_policy" "example" {
  name = "example-policy"
  user = aws_iam_user.example_user.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateAccessKey",
                "iam:ListAccessKeys",
                "iam:ListUsers",
                "iam:PutUserPolicy",
                "iam:CreateUser"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}


