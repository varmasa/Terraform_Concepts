resource "aws_ebs_volume" "extra_volume" {

  availability_zone = aws_instance.web.availability_zone

  size = 10

  type = "gp3"

  tags = {
    Name = "Extra-EBS"
  }
}
