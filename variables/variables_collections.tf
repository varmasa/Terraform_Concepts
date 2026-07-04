variable "availability_zones" {
  type = list(string)

  default = [
    "ap-south-1a",
    "ap-south-1b",
    "ap-south-1c"
  ]
}

variable "allowed ports" {
  type = set(number)
  default = [22,80,443]
}

variable "instance_types" {
  type = map(string)

  default = {
    dev  = "t2.micro"
    test = "t2.small"
    prod = "t3.medium"
  }
}
