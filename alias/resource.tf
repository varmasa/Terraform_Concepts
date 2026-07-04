resource "aws_instance" "mumbai" {
  ami           = "ami-0d351f1b760a30161"
  instance_type = "t2.micro"
}

resource "aws_instance" "virginia" {
  provider = aws.virginia

  ami           = "ami-06067086cf86c58e6"
  instance_type = "t2.micro"
}
