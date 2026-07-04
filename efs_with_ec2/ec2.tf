resource "aws_instance" "web" {

  ami           = "ami-0d351f1b760a30161"
  instance_type = "t2.micro"

  subnet_id = data.aws_subnet.default.id

  vpc_security_group_ids = [
    aws_security_group.efs_sg.id
  ]

  associate_public_ip_address = true

  user_data = <<EOF
#!/bin/bash
yum install -y amazon-efs-utils
mkdir /efs
mount -t efs ${aws_efs_file_system.efs.id}:/ /efs
echo "${aws_efs_file_system.efs.id}:/ /efs efs defaults,_netdev 0 0" >> /etc/fstab
EOF
}
