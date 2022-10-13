# aws_memorydb_parameter_group
resource "aws_memorydb_subnet_group" "example" {
  name       = "my-subnet-group"
  subnet_ids = [var.subnet_1,var.subnet_2]
}

# aws_memorydb_cluster
resource "aws_memorydb_cluster" "example" {
  acl_name                 = "open-access"
  name                     = "my-cluster"
  node_type                = "db.t4g.small"
  subnet_group_name        = aws_memorydb_subnet_group.example.id
}

resource "random_password" "example" {
  length = 16
}

resource "aws_memorydb_user" "example" {
  user_name     = "my-user"
  access_string = "on ~* &* +@all"

  authentication_mode {
    type      = "password"
    passwords = [random_password.example.result]
  }
}