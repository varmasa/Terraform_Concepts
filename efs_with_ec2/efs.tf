resource "aws_efs_file_system" "efs" {

  creation_token = "terraform-efs"

  tags = {
    Name = "Terraform-EFS"
  }
}
