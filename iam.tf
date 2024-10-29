resource "aws_iam_policy" "lambda_invoke" {
    name_prefix = "${var.name}-lambda-invoke"
    description = "Enables lambda invocation in the region"

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