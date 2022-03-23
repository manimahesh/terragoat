resource "aws_s3_bucket" "data" {
  bucket        = "mmani-yor-data1"
  //acl           = "public-read"
  force_destroy = true
}
