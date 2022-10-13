output "subnet_1" {
   description = "First Subnet"
   value = aws_subnet.example-ap-south-1a.id
}

output "subnet_2" {
   description = "Second Subnet"
   value = aws_subnet.example-ap-south-1b.id
}