resource "aws_s3_bucket" "tf_state" {

  bucket = "my-terraform-demo-bucket-876163988748"

  tags = {
    Name = "Terraform-State"
  }
}
