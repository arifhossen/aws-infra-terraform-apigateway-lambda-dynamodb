output "api_id" {
  description = "The ID of the API Gateway"
  value       = aws_api_gateway_rest_api.api_gateway.id
}

output "api_invoke_url" {
  description = "The invoke URL of the deployed API Gateway"
  value       = "${aws_api_gateway_deployment.deployment.invoke_url}/${var.resource_path}"
}
