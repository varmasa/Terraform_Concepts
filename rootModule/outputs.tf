output "instance_id" {
  value = module.ec2.instance_id  //fetching data from child module output since it assigns to instance_id variable
}

output "public_ip" {
  value = module.ec2.public_ip    //Same as above
}
