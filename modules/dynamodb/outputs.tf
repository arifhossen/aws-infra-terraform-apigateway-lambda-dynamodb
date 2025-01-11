# Output the DynamoDB table name
output "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  value       = aws_dynamodb_table.serverless_table.name
}

# Output the DynamoDB table ARN
output "dynamodb_table_arn" {
  description = "The ARN of the DynamoDB table"
  value       = aws_dynamodb_table.serverless_table.arn
}

# Output the DynamoDB table ID
output "dynamodb_table_id" {
  description = "The ID of the DynamoDB table"
  value       = aws_dynamodb_table.serverless_table.id
}


# Output the DynamoDB table billing mode
output "dynamodb_table_billing_mode" {
  description = "The billing mode of the DynamoDB table"
  value       = aws_dynamodb_table.serverless_table.billing_mode
}
