variable "app_version" {
  default = "v1"
}

resource "null_resource" "demo" {
  triggers = {
    app_version = var.app_version
  }

  provisioner "local-exec" {
    command = "echo Null resource executed! Version=${var.app_version}"
  }
}
