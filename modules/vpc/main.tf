# Resource: aws_memorydb_subnet_group
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/24"
}

resource "aws_subnet" "example-ap-south-1a" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = "10.0.0.0/25"
  availability_zone = "ap-south-1a"
}

resource "aws_subnet" "example-ap-south-1b" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = "10.0.0.128/25"
  availability_zone = "ap-south-1b"
}