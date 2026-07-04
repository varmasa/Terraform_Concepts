resource "aws_volume_attachment" "ebs_attach" {

  device_name = "/dev/sdf"

  volume_id = aws_ebs_volume.extra_volume.id

  instance_id = aws_instance.web.id

  force_detach = true
}
