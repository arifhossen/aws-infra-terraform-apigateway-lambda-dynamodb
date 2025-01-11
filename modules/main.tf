
#Lambda Module
module "serverless_lambda" {
  source               = "./lambda"
  stage                = var.stage
  lambda_function_name = var.lambda_function_name
  project_name         = var.project_name
}

#DynamoDB Module
module "serverless_dynamodb" {
  source              = "./dynamodb"
  stage               = var.stage
  dynamodb_table_name = var.dynamodb_table_name
  project_name        = var.project_name
}


module "apigateway" {
  source               = "./apigateway"
  resource_path        = "serverless"
  lambda_function_name = module.serverless_lambda.lambda_function_name
  lambda_invoke_arn    = module.serverless_lambda.lambda_invoke_arn
  region               = var.region
  stage                = var.stage
  project_name         = var.project_name
}

output "api_gateway_invoke_url" {
  description = "API Gateway Base URL"
  value       = module.apigateway.api_invoke_url
}
