resource "aws_security_group" "web_sg" {

  name = "dev-sg"
}

resource "aws_instance" "web" {

  ami           = "ami-0f9235932f10668d4"
  instance_type = "t2.micro"

  depends_on = [
    aws_security_group.web_sg
  ]
}
