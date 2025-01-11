# Output the Lambda function name
output "lambda_function_name" {
  description = "The name of the Lambda function"
  value       = aws_lambda_function.serverless_lambda.function_name
}

# Output the Lambda function ARN
output "lambda_function_arn" {
  description = "The ARN of the Lambda function"
  value       = aws_lambda_function.serverless_lambda.arn
}

# Output the Lambda function IAM role name
output "lambda_role_name" {
  description = "The name of the IAM role associated with the Lambda function"
  value       = aws_iam_role.lambda_role.name
}

# Output the Lambda function IAM role ARN
output "lambda_role_arn" {
  description = "The ARN of the IAM role associated with the Lambda function"
  value       = aws_iam_role.lambda_role.arn
}

output "lambda_invoke_arn" {
  description = "The ARN to invoke the Lambda function"
  value       = aws_lambda_function.serverless_lambda.invoke_arn
}
