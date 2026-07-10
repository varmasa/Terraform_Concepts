locals {
  servers = {
    web1 = {
      instance_type = "t2.micro"
      ami           = "ami-01a18c38ece67e620"
    }
    web2 = {
      instance_type = "t3.micro"
      ami           = "ami-01a18c38ece67e620"
    }
  }
}

module "ec2" {
  source = "./modules/ec2"

  for_each = local.servers

  name          = each.key
  ami           = each.value.ami
  instance_type = each.value.instance_type
}
