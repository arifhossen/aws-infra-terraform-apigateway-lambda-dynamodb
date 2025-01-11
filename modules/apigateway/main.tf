

data "aws_caller_identity" "current" {}

# Create API Gateway
resource "aws_api_gateway_rest_api" "api_gateway" {
  name = "${var.project_name}_${var.stage}_api_gateway"
}

# Create a resource (path in the API, e.g., /example)
resource "aws_api_gateway_resource" "resource" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  parent_id   = aws_api_gateway_rest_api.api_gateway.root_resource_id
  path_part   = var.resource_path
}

# Create methods for GET, POST, PUT, PATCH, and DELETE
resource "aws_api_gateway_method" "methods" {
  for_each      = toset(var.methods)
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  resource_id   = aws_api_gateway_resource.resource.id
  http_method   = each.key
  authorization = "NONE"
}

# Integrate the methods with Lambda
resource "aws_api_gateway_integration" "lambda" {
  for_each                = toset(var.methods)
  rest_api_id             = aws_api_gateway_rest_api.api_gateway.id
  resource_id             = aws_api_gateway_resource.resource.id
  http_method             = each.key # Dynamically set the method from the loop
  integration_http_method = "POST"   # Lambda always uses POST
  type                    = "AWS_PROXY"
  uri                     = var.lambda_invoke_arn
}

resource "aws_lambda_permission" "apigateway" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = var.lambda_function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:${var.region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.api_gateway.id}/${var.stage}/*"
}


# Deploy the API
resource "aws_api_gateway_deployment" "deployment" {
  depends_on  = [aws_api_gateway_integration.lambda]
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  stage_name  = var.stage
}
