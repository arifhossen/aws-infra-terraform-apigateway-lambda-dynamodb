terraform {
  backend "s3" {
    bucket         = "infra-automation-us-east-1"
    key            = "aws_lambda_infra/dev/terraform.tfstate"
    region         = "us-east-1"       # Region for dev
    dynamodb_table = "terraform-locks" # partition id is LockID (String)
    encrypt        = true
    profile        = "ariftech"
  }
}
