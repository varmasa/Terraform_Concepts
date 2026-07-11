provider "aws" {
  region = "ap-south-1"
}

module "bucket" {
  source  = "varmasa/s3-demo/aws"
  version = "1.0.0"

  bucket_name = "my-demo-bucket-6301472191"

  tags = {
    Environment = "Dev"
  }
}
