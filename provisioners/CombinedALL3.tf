provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {

  ami           = "ami-0d351f1b760a30161"
  instance_type = "t2.micro"
  key_name      = "FinalEC2" # Existing AWS Key Pair

  provisioner "file" {
    source      = "/root/Terraform_Concepts/provisioners/index.html"
    destination = "/tmp/index.html"

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("/root/Terraform_Concepts/provisioners/FinalEC2.pem")
      host        = self.public_ip
    }
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install -y nginx",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx",
      "sudo cp /tmp/index.html /usr/share/nginx/html/index.html"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("/root/Terraform_Concepts/provisioners/FinalEC2.pem")
      host        = self.public_ip
    }
  }

  provisioner "local-exec" {
    command = "echo EC2 Created: ${self.public_ip}"
  }
}
