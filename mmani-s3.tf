resource "aws_s3_bucket" "data" {
  bucket        = "mmani-yor-data1"
  acl           = "public-read"
  force_destroy = true
  tags = {
    yor_trace = "2a052d54-d424-47bf-95e1-aac586f232c6"
  }
}
