resource "aws_secretsmanager_secret" "example" {
  name = "terraform-secret"
}

variable "secret-contents" {
  default = {
    key1 = "value1"
    key2 = "value2"
  }

  type = map(string)
}

resource "aws_secretsmanager_secret_version" "example" {
  secret_id     = aws_secretsmanager_secret.example.id
  secret_string = jsonencode(var.secret-contents)
}