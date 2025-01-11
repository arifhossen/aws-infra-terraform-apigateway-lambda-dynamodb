
variable "stage" {
  description = "Stage dev,staging,Prod"
  type        = string
}
variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "dynamodb_table_name" {
  default = "serverless-dynamodb"
}


