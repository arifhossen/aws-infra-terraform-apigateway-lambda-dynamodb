variable "stage" {
  description = "Stage Dev,Prod,staging"
  type        = string
}

variable "region" {
  description = "AWS region for deployment"
  type        = string
}

variable "aws_profile" {
  description = "AWS CLI profile to use"
  type        = string
}
variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "lambda_function_name" {
  default = "serverless-lambda"
}

variable "dynamodb_table_name" {
  description = "DyanmoDB Table Name"
  type        = string
}








