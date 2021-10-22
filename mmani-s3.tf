resource "aws_s3_bucket" "data" {
  bucket        = "mmani-yor-data1"
  acl           = "public-read"
  force_destroy = true
  tags = {
    yor_trace = "862bdb61-aed5-40c1-b764-2935561807a3"
  }
}
