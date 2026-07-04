resource "aws_instance" "web" {
  ami           = "ami-xxxxxxxx"
  instance_type = "t2.micro"
}

output "instance_id" {
  value = aws_instance.web.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

output "private_ip" {
  value = aws_instance.web.private_ip
}

output "public_dns" {
  value = aws_instance.web.public_dns
}

output "security_group_id" {
  value = aws_security_group.web.id
}

output "vpc_id" {
  value = aws_vpc.main.id
}
