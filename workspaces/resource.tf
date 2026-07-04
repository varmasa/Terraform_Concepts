variable "instance_type" {
  type = map(string)

  default = {
    default = "t2.micro"
    dev = "t2.micro"
    test = "t2.small"
    prod = "t3.medium"
  }
}

resource "aws_instance" "web" {
  ami = "ami-0d351f1b760a30161"
  instance_type = var.instance_type[terraform.workspace]

  tags = {
    Name = "web-${terraform.workspace}"
  }
}
