variable "ec2_config" {
  type = object({
    instance_type = string
    ami           = string
    volume_size   = number
    monitoring    = bool
  })

  default = {
    instance_type = "t2.micro"
    ami           = "ami-0123456789abcdef0"
    volume_size   = 20
    monitoring    = true
  }
}

variable "server_info" {
  type = tuple([
    string,
    number,
    bool
  ])

  default = [
    "web-server",
    2,
    true
  ]
}
