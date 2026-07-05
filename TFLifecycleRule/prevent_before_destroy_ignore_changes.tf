resource "terraform_data" "demo" {
  input = "v2"
}

resource "aws_instance" "web" {

  ami           = "ami-0f9235932f10668d4"
  instance_type = "t2.micro"

  tags = {
    Name = "web"
  }

  lifecycle {
    prevent_destroy = true
    create_before_destroy = true
    ignore_changes = [
      tags
    ]
    replace_triggered_by = [
      terraform_data.demo             //whenever input="v2" chnages then it triggers ec2 then 1 update, 1 create & 1 destroy will happen on apply
    ]
  }
}
