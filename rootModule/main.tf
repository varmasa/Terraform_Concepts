module "ec2" {

  source = "./modules/ec2"

  ami           = "ami-0d351f1b760a30161"
  instance_type = "t2.micro"
  instance_name = "Terraform-EC2"
}
