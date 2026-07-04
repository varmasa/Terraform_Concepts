variable "instances" {
  default = {
    dev  = "t2.micro"
    test = "t2.small"
    prod = "t3.medium"
  }
}

resource "aws_instance" "server" {

  for_each = var.instances

  ami           = "ami-xxxxxxxx"
  instance_type = each.value

  tags = {
    Name = each.key
  }
}
