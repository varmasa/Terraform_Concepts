resource "aws_instance" "web" {

  ami           = "ami-0d351f1b760a30161"
  instance_type = "t2.micro"
  key_name      = "my-key"

  provisioner "remote-exec" {

    inline = [
      "sudo yum update -y",
      "sudo yum install -y httpd",
      "sudo systemctl enable httpd",
      "sudo systemctl start httpd"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("my-key.pem")
    host        = self.public_ip
  }
}
