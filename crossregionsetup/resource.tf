resource "aws_s3_bucket" "india_bucket" {
  bucket = "my-demo-bucket-ap-south-1"
}

resource "aws_s3_bucket" "usa_bucket" {
  provider = aws.us_east

  bucket = "my-demo-bucket-us-eas-1"
}
