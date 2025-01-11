variable "region" {
  description = "AWS region for deployment"
  type        = string
}

variable "aws_profile" {
  description = "AWS CLI profile to use"
  type        = string
}

variable "stage" {
  description = "Stage dev,staging,Prod"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "lambda_function_name" {
  description = "serverless-lambda"
  type        = string
}

variable "dynamodb_table_name" {
  description = "serverless-dynamodb"
  type        = string
}


