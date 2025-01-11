module "serverless_infra" {
  source               = "../../modules"
  stage                = var.stage
  region               = var.region
  aws_profile          = var.aws_profile
  lambda_function_name = var.lambda_function_name
  dynamodb_table_name  = var.dynamodb_table_name
  project_name         = var.project_name

}


