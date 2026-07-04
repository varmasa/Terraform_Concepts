resource "aws_efs_mount_target" "mount" {

  file_system_id = aws_efs_file_system.efs.id

  subnet_id = data.aws_subnet.default.id

  security_groups = [
    aws_security_group.efs_sg.id
  ]
}
