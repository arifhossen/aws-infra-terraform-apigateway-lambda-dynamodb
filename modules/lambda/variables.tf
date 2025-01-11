
variable "stage" {
  description = "Stage dev,staging,Prod"
  type        = string
}

variable "lambda_function_name" {
  default = "serverless-lambda"
}

variable "dynamodb_table_name" {
  default = "serverless-dynamodb"
}
variable "project_name" {
  description = "Project Name"
  type        = string
}

