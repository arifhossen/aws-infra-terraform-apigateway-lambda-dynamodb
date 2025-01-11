
resource "aws_dynamodb_table" "serverless_table" {
  name         = "${var.project_name}_${var.stage}_${var.dynamodb_table_name}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "user_id" # Setting the partition key

  attribute {
    name = "user_id"
    type = "S" # String type
  }
}

