terraform {

  backend "s3" {

    bucket         = "my-terraform-demo-bucket-876163988748"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile   = true
  }

}
