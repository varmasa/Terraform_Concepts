variable "instance_name" {
  type    = string
  default = "web-server"
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "enable_monitoring" {
  type    = bool
  default = true
}
