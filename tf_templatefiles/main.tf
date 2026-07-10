resource "aws_instance" "example" {
  ami           = "ami-01a18c38ece67e620"
  instance_type = "t2.micro"

  user_data = templatefile("${path.module}/user-data.sh.tpl", {
    hostname = "web-server"
    username = "ec2-user"
  })
}
