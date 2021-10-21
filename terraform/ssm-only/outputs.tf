
output "ssm_value" {
  value = aws_ssm_parameter.foo.value
  sensitive = true
}

