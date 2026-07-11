variable "app_version" {
  default = "v1"
}

resource "terraform_data" "version" {
  input = var.app_version
}

resource "aws_instance" "web" {
  ami           = "ami-01a18c38ece67e620"
  instance_type = "t2.micro"

  lifecycle {
    replace_triggered_by = [
      terraform_data.version
    ]
  }
}

//terraform apply -var="app_version=v2"      it destroys & creates ec2 again
