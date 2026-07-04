data "aws_vpc" "default" {
	default = true
}
data "aws_subnet" "default" {
  availability_zone = "ap-south-1a"
}
