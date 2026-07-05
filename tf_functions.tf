terraform {
  required_version = ">= 1.5.0"
}

##############################
# Variables
##############################

variable "name" {
  default = "terraform"
}

variable "number" {
  default = 10
}

variable "list" {
  default = ["dev", "test", "prod"]
}

variable "map" {
  default = {
    dev  = "t2.micro"
    test = "t2.small"
    prod = "t2.medium"
  }
}

##############################
# Locals
##############################

locals {
  str = "terraform functions"
}

##############################
# Outputs
##############################

# String Functions

output "upper" {
  value = upper(var.name)
}

output "lower" {
  value = lower("TERRAFORM")
}

output "title" {
  value = title("terraform functions")
}

output "replace" {
  value = replace(local.str, "functions", "demo")
}

output "substr" {
  value = substr("Terraform", 0, 4)
}

output "split" {
  value = split("-", "dev-test-prod")
}

output "join" {
  value = join(",", var.list)
}

output "trimspace" {
  value = trimspace("   Hello Terraform   ")
}

##############################
# Numeric Functions
##############################

output "max" {
  value = max(10, 20, 5)
}

output "min" {
  value = min(10, 20, 5)
}

output "ceil" {
  value = ceil(10.2)
}

output "floor" {
  value = floor(10.9)
}

##############################
# Collection Functions
##############################

output "length" {
  value = length(var.list)
}

output "contains" {
  value = contains(var.list, "prod")
}

output "element" {
  value = element(var.list, 1)
}

output "lookup" {
  value = lookup(var.map, "prod")
}

output "keys" {
  value = keys(var.map)
}

output "values" {
  value = values(var.map)
}

output "merge" {
  value = merge(
    { Name = "EC2" },
    { Env = "Dev" }
  )
}

output "concat" {
  value = concat(["a", "b"], ["c", "d"])
}

output "distinct" {
  value = distinct(["a", "b", "a", "c"])
}

output "sort" {
  value = sort(["z", "b", "a"])
}

##############################
# Type Conversion
##############################

output "tolist" {
  value = tolist(["a", "b"])
}

output "tomap" {
  value = tomap({
    Name = "EC2"
  })
}

output "tostring" {
  value = tostring(100)
}

##############################
# Encoding Functions
##############################

output "jsonencode" {
  value = jsonencode({
    Name = "Terraform"
    Env  = "Dev"
  })
}

output "jsondecode" {
  value = jsondecode("{\"Name\":\"EC2\"}")
}

##############################
# File Functions
##############################

output "fileexists" {
  value = fileexists("test.txt")
}

##############################
# Date Functions
##############################

output "timestamp" {
  value = timestamp()
}

##############################
# Misc Functions
##############################

output "coalesce" {
  value = coalesce("", "Terraform", "AWS")
}

output "try" {
  value = try(var.map["stage"], "Not Found")
}

output "can" {
  value = can(var.map["dev"])
}

output "format" {
  value = format("Instance-%s", var.name)
}

output "uuid" {
  value = uuid()
}



Output:

can = true
ceil = 11
coalesce = "Terraform"
concat = [
  "a",
  "b",
  "c",
  "d",
]
contains = true
distinct = tolist([
  "a",
  "b",
  "c",
])
element = "test"
fileexists = false
floor = 10
format = "Instance-terraform"
join = "dev,test,prod"
jsondecode = {
  "Name" = "EC2"
}
jsonencode = "{\"Env\":\"Dev\",\"Name\":\"Terraform\"}"
keys = [
  "dev",
  "prod",
  "test",
]
length = 3
lookup = "t2.medium"
lower = "terraform"
max = 20
merge = {
  "Env" = "Dev"
  "Name" = "EC2"
}
min = 5
replace = "terraform demo"
sort = tolist([
  "a",
  "b",
  "z",
])
split = tolist([
  "dev",
  "test",
  "prod",
])
substr = "Terr"
timestamp = "2026-07-05T14:17:08Z"
title = "Terraform Functions"
tolist = tolist([
  "a",
  "b",
])
tomap = tomap({
  "Name" = "EC2"
})
tostring = "100"
trimspace = "Hello Terraform"
try = "Not Found"
upper = "TERRAFORM"
uuid = "6069227a-3fac-2c66-4a3c-6c21fe218006"
values = [
  "t2.micro",
  "t2.medium",
  "t2.small",
]
