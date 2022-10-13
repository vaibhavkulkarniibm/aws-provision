resource "aws_cloudwatch_log_group" "ec2_log_group" {
  name = "ec2_log_group"
}

resource "aws_cloudwatch_log_stream" "ec2_log_stream" {
  name           = "ec2_log_stream"
  log_group_name = aws_cloudwatch_log_group.ec2_log_group.name
}