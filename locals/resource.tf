locals {
  common_tags = {
    project       = "terraform"
    Env           = "dev"
    instance_name = "web-server"
  }
}

resource "aws_instance" "web" {

  ami           = "ami-0f9235932f10668d4"
  instance_type = "t2.micro"

  tags = local.common_tags      //It assigns whole locals as tags to ec2

  tags = {
    Name = local.common_tags.project           //will assign name to ec2
  }
}
