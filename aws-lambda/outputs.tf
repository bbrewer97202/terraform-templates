output "function_name" {
  description = "Lambda function name"
  value = aws_lambda_function.lambda_function.function_name
}

output "arn" {
  description = "Lambda arn"
  value = aws_lambda_function.lambda_function.arn
}

output "invoke_arn" {
  description = "Lambda invoke arn"
  value = aws_lambda_function.lambda_function.invoke_arn
}

output "lambda_cloudwatch_log_group_arn" {
  description = "Cloudwatch log group arn"
  value = aws_cloudwatch_log_group.lambda_log_group.arn
}