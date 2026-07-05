resource "aws_instance" "web" {

  ami           = "ami-0d351f1b760a30161"
  instance_type = "t2.micro"

  provisioner "file" {

    source      = "index.html"
    destination = "/tmp/index.html"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("my-key.pem")
    host        = self.public_ip
  }
}
