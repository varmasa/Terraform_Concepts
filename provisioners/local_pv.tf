resource "aws_instance" "web" {

  ami           = "ami-0d351f1b760a30161"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo EC2 Created Successfully > output.txt"
  }
}
