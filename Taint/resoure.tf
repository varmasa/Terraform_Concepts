provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0d351f1b760a30161"
  instance_type = "t2.micro"
}
