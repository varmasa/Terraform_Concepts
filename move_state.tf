locals {
  common_tags = {
    project       = "terraform"
    Env           = "dev"
    instance_name = "web-server"
  }
}

moved {
  from = aws_instance.web
  to   = aws_instance.server                     //tf state list will shows web previously now it shows server since we used move block without this it will destroy & create it
}

resource "aws_instance" "server" {

  ami           = "ami-0f9235932f10668d4"
  instance_type = "t2.micro"

  tags = local.common_tags      //It assigns whole locals as tags to ec2
}
