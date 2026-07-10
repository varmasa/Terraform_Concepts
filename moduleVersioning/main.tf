module "network" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git?ref=v5.14.1"    //with version
}
module "network" {
  source = "git::https://github.com/company/terraform-modules.git//vpc?ref=main"    //with git branch name
}
module "network" {
  source = "git::https://github.com/company/terraform-modules.git//vpc?ref=8f2c9d7" //with SHA id
}
