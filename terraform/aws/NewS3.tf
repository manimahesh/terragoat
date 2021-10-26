resource "aws_s3_bucket" "mmani" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    UserLocal   = "Mahesh Mani"
    yor_trace   = "d98deedb-9b39-4736-8b5c-faa610992cb6"
  }
}