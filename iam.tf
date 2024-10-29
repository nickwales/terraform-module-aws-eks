resource "aws_iam_role_policy" "lambda_invoke" {
    name_prefix = "${var.name}-lambda-invoke"

    role = aws_iam_role.consul_gateway.id
    policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
        {
            "Action": [
                "lambda:InvokeFunction"
            ],
            "Effect": "Allow",
            "Resource": "arn:aws:lambda:${var.region}:*:*"
        }          
        ]
    })
}