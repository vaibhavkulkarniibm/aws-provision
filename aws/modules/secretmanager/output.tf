output "example" {
  value = jsondecode(aws_secretsmanager_secret_version.example.secret_string)["key1"]
}