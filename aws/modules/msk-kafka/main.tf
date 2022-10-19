resource "aws_msk_serverless_cluster" "example" {
  cluster_name = "Example"

  vpc_config {
    subnet_ids         = [var.subnet_1,var.subnet_2]
    security_group_ids = [var.sg_id]
  }

  client_authentication {
    sasl {
      iam {
        enabled = true
      }
    }
  }
}