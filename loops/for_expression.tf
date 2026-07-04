variable "numbers" {
  default = [1,2,3,4]
}

output "square" {
  value = [
    for n in var.numbers : n * n
  ]
}
