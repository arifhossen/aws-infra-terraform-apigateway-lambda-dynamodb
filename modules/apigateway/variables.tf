variable "region" {
  description = "AWS region for deployment"
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

variable "methods" {
  description = "The list of HTTP methods to create (e.g., GET, POST, PUT, DELETE)"
  type        = list(string)
  default     = ["GET", "POST", "PUT", "PATCH"]
}

variable "resource_path" {
  description = "The path part for the resource (e.g., 'example' for /example)"
  type        = string
}

variable "lambda_invoke_arn" {
  description = "The ARN of the Lambda function to invoke"
  type        = string
}

variable "lambda_function_name" {
  description = "The  Lambda function name"
  type        = string
}



