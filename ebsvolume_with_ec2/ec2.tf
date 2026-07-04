resource "aws_instance" "web" {

  ami           = "ami-0d351f1b760a30161" # Amazon Linux 2023 (Example)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
