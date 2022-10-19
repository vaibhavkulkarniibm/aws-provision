output "subnet_1" {
   description = "First Subnet"
   value = aws_subnet.example-ap-southeast-1a.id
}

output "subnet_2" {
   description = "Second Subnet"
   value = aws_subnet.example-ap-southeast-1b.id
}

output "vpc_id" {
   description = "VPC ID"
   value = aws_vpc.example.id
}

output "sg_id" {
   description = "VPC ID"
   value = aws_security_group.sg.id
}