resource "aws_s3_bucket" "mmani" {
  versioning {
    enabled = true
  }
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name                 = "My bucket"
    Environment          = "Dev"
    yor_trace            = "d98deedb-9b39-4736-8b5c-faa610992cb6"
    git_commit           = "682dfa34d7a31ed510e1f8eb1e692545376e4d96"
    git_file             = "terraform/aws/YorFolder/s3.tf"
    git_last_modified_at = "2021-10-08 05:24:25"
    git_last_modified_by = "manimahesh1@gmail.com"
    git_modifiers        = "manimahesh1"
    git_org              = "manimahesh"
    git_repo             = "terragoat"
  }
}